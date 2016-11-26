package pl.educativo.todoekspert;

import android.app.Application;

import pl.educativo.todoekspert.data.LoginManager;
import pl.educativo.todoekspert.data.TodoDao;

/**
 * Obiekt aplikacji, tworzony przed wystartowaniem Activity czy Service.
 */
public class TodoApplication extends Application {

    private LoginManager loginManager;
    private TodoDao todoDao;

    @Override
    public void onCreate() {
        super.onCreate();
        loginManager = new LoginManager(this);
        todoDao = new TodoDao(getApplicationContext());
    }

    public TodoDao getTodoDao() {
        return todoDao;
    }

    public LoginManager getLoginManager() {
        return loginManager;
    }

}
