package pl.educativo.todoekspert.services;

import android.annotation.SuppressLint;
import android.app.IntentService;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.Build;
import android.util.Log;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.List;

import pl.educativo.todoekspert.BuildConfig;
import pl.educativo.todoekspert.R;
import pl.educativo.todoekspert.TodoApplication;
import pl.educativo.todoekspert.activities.TodoListActivity;
import pl.educativo.todoekspert.data.LoginManager;
import pl.educativo.todoekspert.data.Todo;
import pl.educativo.todoekspert.data.TodoDao;
import pl.educativo.todoekspert.utils.HttpUtils;

/**
 * IntentService odświeżający listę zadań w bazie danych, danymi pobranymi z serwera.
 * W przypaku pojawienia się nowych zadań, wyświetla notyfikację.
 * Kasy dziedziczące po IntentService automatycznie tworzą nowy wątek na każde nowe zadanie.
 */
public class RefreshIntentService extends IntentService {

    private static final String TAG = RefreshIntentService.class.getSimpleName();
    //id notyfikacji - unikalne w ramach aplikacji (aplikacja może mieć wiele notyfikacji na raz)
    public static final int NOTIFICATION_ID = 1;
    //id akcji, która będzie używana do odróżnienia tego rozgłoszenia od innych poprzez filtr
    public static final String REFRESH_ACTION =
            "pl.educativo.todoekspert.REFRESH_ACTION";

    /**
     * Wymagany przez system bezparametrowy konstruktor.
     */
    public RefreshIntentService() {
        /*
         Klasa IntentFilter wymaga wywołania konstruktora przyjmującego nazwę Wątku,
         który zostanie utworzony do obsługi onHandleIntent.
         */
        super(TAG);
    }

    /**
     * Metoda, która wykonywana jest w nowo utworzonym wątku, za każdym razem,
     * gdy wysłany zostanie Intent.
     *
     * @param intent Intent użyty do wystartowania serwisu.
     */
    @Override
    protected void onHandleIntent(Intent intent) {
        Log.d(TAG, "onHandleIntent");

        //wyciągamy potrzebne komponenty z aplikacji
        TodoApplication application = (TodoApplication) getApplication();
        LoginManager loginManager = application.getLoginManager();
        TodoDao todoDao = application.getTodoDao();

        String result = null;
        try {
            //pobieramy nowe zadania z serwera
            result = HttpUtils.getTodos(loginManager.getSessionToken());
            JSONObject jsonObject = new JSONObject(result);
            JSONArray jsonArray = jsonObject.getJSONArray("results");

            Log.d(TAG, "Result:" + result);
            //sprawdzamy, jakie najnowsze zadanie mamy w bazie
            long newestTimestamp = todoDao.getLatestCreatedAtTime(loginManager.getUserId());
            int newItems = 0;
            //konwertujemy odpowiedź na obiekty modelu
            List<Todo> todos = Todo.fromJsonArray(jsonArray);
            for (Todo todo : todos) {
                Log.d(TAG, todo.toString());
                //zapisujemy do bazy
                todoDao.insertOrUpdate(todo);

                if (todo.createdAt.getTime() > newestTimestamp) {
                    //jesli element jest nowszy niż najnowszy
                    //to zwiekszamy ilość nowych
                    newItems++;
                }
            }

            if (newItems > 0) {
                //wyświetlamy notyfikację, jeśli są nowe zadania
                showNotifications(newItems);
            }
            //wysyłamy rozgłoszenie o zakończeniu odświeżenia bazy
            Intent broadcastIntent = new Intent(REFRESH_ACTION);
            sendBroadcast(broadcastIntent);
        } catch (Exception e) {
            Log.e(TAG, "Error during update:", e);
        }


    }

    /**
     * Metoda pomocnicza, odpowiedzialna za wyświetlenie notyfikacji o nowych zadaniach.
     *
     * @param newItems liczba nowych zadań do wyświetlenia
     */
    @SuppressLint("NewApi")
    private void showNotifications(int newItems) {
        Log.d(TAG, "New items:" + newItems);

        NotificationManager notificationManager = (NotificationManager) getSystemService(NOTIFICATION_SERVICE);
        Notification.Builder builder = new Notification.Builder(getApplicationContext());
        builder.setContentTitle("New todos have arrived!");
        builder.setContentText("New items:" + newItems);
        builder.setSmallIcon(R.drawable.ic_launcher);
        //auto cancel usuwa notyfikację po kliknięciu w nią
        builder.setAutoCancel(true);

        //intent wywoływany po kliknięciu w notyfikację - startuje activity z listą
        Intent intent = new Intent(getApplicationContext(), TodoListActivity.class);
        //dzięki tej fladze, activity nie będzie startowane drugi raz, jeśli już jest otwarte
        intent.setFlags(Intent.FLAG_ACTIVITY_SINGLE_TOP);
        PendingIntent pendingIntent = PendingIntent.getActivity(getApplicationContext(), 0, intent, PendingIntent.FLAG_CANCEL_CURRENT);

        builder.setContentIntent(pendingIntent);

        Notification notification = null;
        if (BuildConfig.VERSION_CODE >= Build.VERSION_CODES.JELLY_BEAN) {
            //metoda build jest dostępna od API 16
            notification = builder.build();
        } else {
            //we wcześniejszych wersjach należy użyć getNotification
            notification = builder.getNotification();
        }

        //wyświetl notyfikację
        notificationManager.notify(NOTIFICATION_ID, notification);

    }
}
