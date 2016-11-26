package pl.educativo.todoekspert.data;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

import pl.educativo.todoekspert.data.Todo;

/**
 * Klasa pozwalająca na zapisywanie/odczyt obiektów Todo w bazie danych.
 */
public class TodoDao {

    /**
     * Nazwy kolumn w DB.
     */
    public static final String C_ID = "_id";
    public static final String C_CONTENT = "content";
    public static final String C_DONE = "done";
    public static final String C_USER_ID = "user_id";
    public static final String C_CREATED_AT = "created_at";
    public static final String C_UPDATED_AT = "updated_at";


    public static final String TABLE_NAME = "todos";

    /**
     * Nazwa pliku zawierającego bazę danych SQLite.
     */
    public static final String DB_NAME = "todo.db";
    /**
     * Rewizja bazy danych. Wartość tą należy zmienić przy każdej modyfikacji struktury bazy danych.
     */
    public static final int DB_VERSION = 1;

    private DBHelper dbHelper;

    public TodoDao(Context context) {
        dbHelper = new DBHelper(context);
    }

    public Cursor query(String userId, boolean sortAsc) {
        SQLiteDatabase db = dbHelper.getReadableDatabase();
        //SELECT * FROM todos WHERE user_id=? ORDER BY updated_at ASC/DESC

        return db.query(TABLE_NAME, null, String.format("%s=?", C_USER_ID),
                new String[]{userId}, null, null,
                String.format("%s %s", C_UPDATED_AT, sortAsc ? "ASC" : "DESC"));
    }

    public void insertOrUpdate(Todo todo) {
        SQLiteDatabase database = dbHelper.getWritableDatabase();

        ContentValues values = new ContentValues();
        values.put(C_ID, todo.objectId);
        values.put(C_CONTENT, todo.content);
        values.put(C_DONE, todo.done);
        values.put(C_CREATED_AT, todo.createdAt.getTime());
        values.put(C_UPDATED_AT, todo.updatedAt.getTime());
        values.put(C_USER_ID, todo.userId);

        database.insertWithOnConflict(TABLE_NAME, null, values, SQLiteDatabase.CONFLICT_REPLACE);
    }

    public static class DBHelper extends SQLiteOpenHelper {

        private static final String TAG = DBHelper.class.getSimpleName();

        public DBHelper(Context context) {
            super(context, DB_NAME, null, DB_VERSION);
        }

        @Override
        public void onCreate(SQLiteDatabase sqLiteDatabase) {
            String sql = String.format("CREATE TABLE %s " +
                            "(%s TEXT PRIMARY KEY NOT NULL, %s TEXT, %s INT, %s INT, %s INT," +
                            " %s TEXT)", TABLE_NAME, C_ID,
                    C_CONTENT, C_DONE, C_CREATED_AT, C_UPDATED_AT, C_USER_ID);
            Log.d(TAG, "onCreate sql:" + sql);
            sqLiteDatabase.execSQL(sql);

        }

        @Override
        public void onUpgrade(SQLiteDatabase sqLiteDatabase, int i, int i2) {

            sqLiteDatabase.execSQL(String.format("DROP TABLE IF EXISTS %s", TABLE_NAME));
            onCreate(sqLiteDatabase);

        }
    }

    /**
     * Pobranie najnowszej daty utworzenia dla obiektu. Każdy obiekt nowszy, traktujemy jako nowy,
     * podczas aktualizacji.
     * @param userId
     * @return
     */
    public long getLatestCreatedAtTime(String userId) {
        SQLiteDatabase db = dbHelper.getReadableDatabase();
        try {
            //SELECT max(created_at) FROM todos WHERE user_id=?
            Cursor cursor = db.query(
                    TABLE_NAME,
                    new String[] {String.format("max(%s)", C_CREATED_AT)},
                    String.format("%s=?", C_USER_ID), new String[]{userId}, null, null, null);
            try {
                //jeśli jest jakiś wynik to zwróć, w przeciwnym wypadku najstarsza data możliwa
                return cursor.moveToNext() ? cursor.getLong(0) : Long.MIN_VALUE;
            } finally {
                cursor.close();
            }
        } finally {
            db.close();
        }
    }

}
