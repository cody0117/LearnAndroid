package pl.educativo.todoekspert.data;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;

/**
* Manager przechowujący dane zalogowanego użytkownika, w pamięci i SharedPreferences.
*/
public class LoginManager {

    //klucze do zapisu w SharedPreferences
    public static final String SESSION_TOKEN = "sessionToken";
    public static final String OBJECT_ID = "objectId";

    private String sessionToken;
    private String userId;

    private SharedPreferences sharedPreferences;

    public LoginManager(Context context) {
        sharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        this.sessionToken = sharedPreferences.getString(SESSION_TOKEN, null);
        this.userId = sharedPreferences.getString(OBJECT_ID, null);
    }

    /**
     * Check is user logged.
     * @return
     */
    public boolean isUserNotLogged() {
        return TextUtils.isEmpty(sessionToken)
                || TextUtils.isEmpty(userId);
    }

    /**
     * Save login data in shared preferences.
     * @param sessionToken
     * @param userId
     */
    public void saveLogin(String sessionToken, String userId) {
        this.sessionToken = sessionToken;
        this.userId = userId;

        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putString(SESSION_TOKEN, sessionToken);
        edit.putString(OBJECT_ID, userId);
        edit.apply();
    }

    /**
     * Clean login data from preferences.
     */
    public void logout() {
        sessionToken = null;
        sessionToken = null;

        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.remove(SESSION_TOKEN);
        edit.remove(OBJECT_ID);
        edit.apply();

    }


    public String getSessionToken() {
        return sessionToken;
    }

    public String getUserId() {
        return userId;
    }

}
