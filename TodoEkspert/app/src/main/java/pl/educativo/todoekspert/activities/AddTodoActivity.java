package pl.educativo.todoekspert.activities;

import android.app.Activity;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Toast;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;
import java.text.ParseException;

import pl.educativo.todoekspert.utils.HttpUtils;
import pl.educativo.todoekspert.data.LoginManager;
import pl.educativo.todoekspert.R;
import pl.educativo.todoekspert.data.Todo;
import pl.educativo.todoekspert.TodoApplication;
import pl.educativo.todoekspert.data.TodoDao;

/**
 * Activity dodawania nowego zadania. Zwraca informację o tym, czy się powiodło przez mechanizm
 * setResult.
 */
public class AddTodoActivity extends Activity {

    private EditText contentEditText;
    private CheckBox doneCheckBox;
    private Button saveButton;

    private LoginManager loginManager;
    private TodoApplication application;
    private TodoDao todoDao;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        //dodanie paska oczekiwania nad Activity, musi być wykonane przed super.onCreate
        requestWindowFeature(Window.FEATURE_PROGRESS);

        super.onCreate(savedInstanceState);
        setProgressBarIndeterminate(true);//ustawienie trybu pracy paska na chodzący ciągle

        setContentView(R.layout.activity_add_todo);
        contentEditText = (EditText) findViewById(R.id.content_et);
        doneCheckBox = (CheckBox) findViewById(R.id.done_cb);
        saveButton = (Button) findViewById(R.id.save_btn);
        application = ((TodoApplication) getApplication());

        loginManager = application.getLoginManager();
        todoDao = application.getTodoDao();

        saveButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String content = contentEditText.getText().toString();
                boolean isDone = doneCheckBox.isChecked();

                addTodo(content, isDone);
            }
        });
    }

    /**
     * Wysyła nowe zadanie na serwer, zapisuje do bazy i zwraca wynik przez setResult.
     * @param content
     * @param isDone
     */
    private void addTodo(String content, boolean isDone) {
        final Todo todo = new Todo();
        todo.content = content;
        todo.done = isDone;
        todo.userId = loginManager.getUserId();

        AsyncTask<Todo, Void, JSONObject> asyncTask = new AsyncTask<Todo, Void, JSONObject>() {

            @Override
            protected void onPreExecute() {
                super.onPreExecute();
                setProgressBarVisibility(true);
            }

            @Override
            protected JSONObject doInBackground(Todo... todos) {
                Todo todoToSave = todos[0];

                String token = loginManager.getSessionToken();
                try {
                    String result = HttpUtils.postTodo(todoToSave.toJsonString(), token);
                    return new JSONObject(result);
                } catch (IOException e) {
                    e.printStackTrace();
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                return null;
            }

            @Override
            protected void onPostExecute(JSONObject jsonObject) {
                super.onPostExecute(jsonObject);

                setProgressBarVisibility(false);
                if (jsonObject == null) {
                    //error
                } else if (jsonObject.has("error")) {
                    Toast.makeText(getApplicationContext(), "Error:" + jsonObject.optString("error"), Toast.LENGTH_SHORT).show();
                } else {
                    try {
                        //serwer zwrócił zapisany element - zapisujemy go do bazy
                        Todo todoFromServer = Todo.fromJsonObject(jsonObject);
                        todoDao.insertOrUpdate(todoFromServer);
                        //udało się, poinformuj activity pod spodem
                        setResult(RESULT_OK);
                        //zakończ obecne
                        finish();
                    } catch (JSONException e) {
                        e.printStackTrace();
                    } catch (ParseException e) {
                        e.printStackTrace();
                    }
                }
            }
        };
        asyncTask.execute(todo);
    }


}
