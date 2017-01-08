// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import java.io.File;
import java.util.HashSet;
import java.util.Set;

// Referenced classes of package com.google.android.gms.tagmanager:
//            x, bo, s

final class br extends SQLiteOpenHelper
{

    final bo a;

    br(bo bo1, Context context, String s1)
    {
        a = bo1;
        super(context, s1, null, 1);
    }

    private static boolean a(String s1, SQLiteDatabase sqlitedatabase)
    {
        Cursor cursor = null;
        Cursor cursor2 = sqlitedatabase.query("SQLITE_MASTER", new String[] {
            "name"
        }, "name=?", new String[] {
            s1
        }, null, null, null);
        boolean flag = cursor2.moveToFirst();
        if (cursor2 != null)
        {
            cursor2.close();
        }
        return flag;
        SQLiteException sqliteexception;
        sqliteexception;
        Cursor cursor1 = null;
_L4:
        (new StringBuilder("Error querying for table ")).append(s1);
        x.c();
        if (cursor1 != null)
        {
            cursor1.close();
        }
        return false;
        Exception exception;
        exception;
_L2:
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
        exception;
        cursor = cursor2;
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        cursor = cursor1;
        exception = exception1;
        if (true) goto _L2; else goto _L1
_L1:
        SQLiteException sqliteexception1;
        sqliteexception1;
        cursor1 = cursor2;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final SQLiteDatabase getWritableDatabase()
    {
        SQLiteDatabase sqlitedatabase1 = super.getWritableDatabase();
        SQLiteDatabase sqlitedatabase = sqlitedatabase1;
_L2:
        if (sqlitedatabase == null)
        {
            sqlitedatabase = super.getWritableDatabase();
        }
        return sqlitedatabase;
        SQLiteException sqliteexception;
        sqliteexception;
        bo.b(a).getDatabasePath("google_tagmanager.db").delete();
        sqlitedatabase = null;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public final void onCreate(SQLiteDatabase sqlitedatabase)
    {
        String s1 = sqlitedatabase.getPath();
        if (s.a() >= 9)
        {
            File file = new File(s1);
            file.setReadable(false, false);
            file.setWritable(false, false);
            file.setReadable(true, true);
            file.setWritable(true, true);
        }
    }

    public final void onOpen(SQLiteDatabase sqlitedatabase)
    {
        Cursor cursor1;
        if (android.os.Build.VERSION.SDK_INT >= 15)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        cursor1 = sqlitedatabase.rawQuery("PRAGMA journal_mode=memory", null);
        cursor1.moveToFirst();
        cursor1.close();
        if (a("datalayer", sqlitedatabase)) goto _L2; else goto _L1
_L1:
        sqlitedatabase.execSQL(bo.a());
_L6:
        return;
        Exception exception1;
        exception1;
        cursor1.close();
        throw exception1;
_L2:
        Cursor cursor;
        HashSet hashset;
        cursor = sqlitedatabase.rawQuery("SELECT * FROM datalayer WHERE 0", null);
        hashset = new HashSet();
        String as[] = cursor.getColumnNames();
        int i = 0;
_L4:
        if (i >= as.length)
        {
            break; /* Loop/switch isn't completed */
        }
        hashset.add(as[i]);
        i++;
        if (true) goto _L4; else goto _L3
_L3:
        cursor.close();
        if (!hashset.remove("key") || !hashset.remove("value") || !hashset.remove("ID") || !hashset.remove("expires"))
        {
            throw new SQLiteException("Database column missing");
        }
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        cursor.close();
        throw exception;
        if (hashset.isEmpty()) goto _L6; else goto _L5
_L5:
        throw new SQLiteException("Database has extra columns");
    }

    public final void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
    }
}
