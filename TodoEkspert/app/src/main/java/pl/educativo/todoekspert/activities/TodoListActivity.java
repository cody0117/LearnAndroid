package pl.educativo.todoekspert.activities;

import android.app.ListActivity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.CheckBox;
import android.widget.SimpleCursorAdapter;
import android.widget.Toast;

import pl.educativo.todoekspert.data.LoginManager;
import pl.educativo.todoekspert.R;
import pl.educativo.todoekspert.services.RefreshIntentService;
import pl.educativo.todoekspert.TodoApplication;
import pl.educativo.todoekspert.data.TodoDao;


public class TodoListActivity extends ListActivity {

    public static final int REQUEST_CODE = 123;
    private static final String TAG = TodoListActivity.class.getSimpleName();
    private LoginManager loginManager;
    private TodoDao todoDao;
    private SimpleCursorAdapter simpleCursorAdapter;

    private BroadcastReceiver broadcastReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            refreshCursor();
        }
    };

    @Override
    protected void onPause() {
        super.onPause();
        unregisterReceiver(broadcastReceiver);
    }

    @Override
    protected void onResume() {
        super.onResume();
        registerReceiver(broadcastReceiver, new IntentFilter(RefreshIntentService.REFRESH_ACTION));

    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        TodoApplication todoApplication = (TodoApplication) getApplication();
        loginManager = todoApplication.getLoginManager();
        if(loginManager.isUserNotLogged()) {
            goToLogin();
            return;
        }
        setContentView(R.layout.activity_todo_list);
        todoDao = ((TodoApplication) getApplication()).getTodoDao();
        String[] from = new String[]{TodoDao.C_CONTENT, TodoDao.C_DONE};
        int[] to = new int[]{R.id.item_cb, R.id.item_cb};
        simpleCursorAdapter = new SimpleCursorAdapter(getApplicationContext(), R.layout.todo_item, null,
                from, to, 0);

        SimpleCursorAdapter.ViewBinder viewBinder = new SimpleCursorAdapter.ViewBinder() {
            @Override
            public boolean setViewValue(View view, Cursor cursor, int i) {
                if(i == cursor.getColumnIndex(TodoDao.C_DONE)) {
                    CheckBox checkBox = (CheckBox) view;
                    int value = cursor.getInt(i);
                    checkBox.setChecked(value > 0);
                    return true;

                }

                return false;
            }
        };
        simpleCursorAdapter.setViewBinder(viewBinder);
        setListAdapter(simpleCursorAdapter);
        refreshCursor();

    }

    class ViewHolder {
        CheckBox checkBox;
    }


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.todo_list, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();
        if (id == R.id.action_logout) {
            loginManager.logout();
            goToLogin();
            return true;
        } else if(id == R.id.action_add) {
            Intent intent = new Intent(getApplicationContext(), AddTodoActivity.class);
            startActivityForResult(intent, REQUEST_CODE);
            return true;
        } else if(id == R.id.action_refresh) {

            Intent intent = new Intent(getApplicationContext(), RefreshIntentService.class);
            startService(intent);
        }
        return super.onOptionsItemSelected(item);
    }

    private void refreshCursor() {
        Cursor cursor = todoDao.query(loginManager.getUserId(), false);
        simpleCursorAdapter.changeCursor(cursor);
    }

    private void goToLogin() {
        finish();
        Intent intent = new Intent(getApplicationContext(), LoginActivity.class);
        startActivity(intent);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        if(requestCode == REQUEST_CODE) {
            if(resultCode == RESULT_OK) {

                refreshCursor();
            } else if( resultCode == RESULT_CANCELED) {
                Toast.makeText(getApplicationContext(), "Result canceled!", Toast.LENGTH_SHORT).show();

            }
        }
    }
}
