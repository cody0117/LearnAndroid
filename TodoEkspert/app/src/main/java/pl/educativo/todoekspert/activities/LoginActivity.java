package pl.educativo.todoekspert.activities;

import android.app.Activity;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;

import pl.educativo.todoekspert.utils.HttpUtils;
import pl.educativo.todoekspert.R;
import pl.educativo.todoekspert.TodoApplication;

/**
 * Activity logowania. Pobiera dane od użytkownika, sprawdza ich poprawność i wysyła na server.
 */
public class LoginActivity extends Activity implements View.OnClickListener {

    private static final String TAG = LoginActivity.class.getSimpleName();

    public static final String SESSION_TOKEN = "sessionToken";
    public static final String OBJECT_ID = "objectId";

    private Button button;
    private EditText usernameEditText;
    private EditText passwordEditText;

    private AsyncTask<String, Integer, JSONObject> asyncTask;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
        button = (Button) findViewById(R.id.login_btn);
        button.setOnClickListener(this);
        usernameEditText = (EditText) findViewById(R.id.username_et);
        passwordEditText = (EditText) findViewById(R.id.password_et);
    }




    @Override
    public void onClick(View view) {
        String username = usernameEditText.getText().toString();
        String password = passwordEditText.getText().toString();

        //prosta walidacja - czy pola nie są puste
        boolean isError = false;
        if(TextUtils.isEmpty(username)) {
            usernameEditText.setError(getString(R.string.this_field_is_required));
            isError = true;
        }

        if(TextUtils.isEmpty(password)) {
            passwordEditText.setError(getString(R.string.this_field_is_required));
            isError = true;
        }

        if(!isError) {
            login(username, password);
        }
    }

    private void login(String username, String password) {

        asyncTask = new AsyncTask<String, Integer, JSONObject>() {
            @Override
            protected JSONObject doInBackground(String... strings) {
                String username = strings[0];
                String password = strings[1];
                try {
                    String result = HttpUtils.getLogin(username, password);
                    Log.d(TAG, "Result:" + result);
                    return new JSONObject(result);
                } catch (IOException e) {
                    e.printStackTrace();
                } catch (JSONException e) {
                    e.printStackTrace();
                }


                return null;

            }

            @Override
            protected void onProgressUpdate(Integer... values) {
                super.onProgressUpdate(values);
                Log.d(TAG, "Progress:" + values[0]);

            }

            @Override
            protected void onPostExecute(JSONObject result) {
                super.onPostExecute(result);
                button.setEnabled(true);
                if(result == null) {
                    Toast.makeText(getApplicationContext(), "Connection error", Toast.LENGTH_SHORT).show();

                } else if(result.has("error")) {
                    Toast.makeText(getApplicationContext(), "Error: " + result.optString("error"), Toast.LENGTH_SHORT).show();

                } else {
                    String sessionToken = result.optString(SESSION_TOKEN);
                    String userId = result.optString(OBJECT_ID);

                    ((TodoApplication)getApplication()).getLoginManager().saveLogin(sessionToken, userId);

                    Toast.makeText(getApplicationContext(), "Login OK", Toast.LENGTH_SHORT).show();
                    Intent intent = new Intent(getApplicationContext(), TodoListActivity.class);
                    startActivity(intent);
                    finish();
                }

            }

            @Override
            protected void onPreExecute() {
                super.onPreExecute();
                button.setEnabled(false);
            }
        };

        asyncTask.execute(username, password);


    }
}
