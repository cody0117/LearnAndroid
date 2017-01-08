// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.b;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.aadhk.restpos.bean.User;
import java.util.ArrayList;
import java.util.List;

public final class x
{

    private static final String a[] = {
        "id", "account", "password", "role"
    };
    private final SQLiteDatabase b;

    public x(SQLiteDatabase sqlitedatabase)
    {
        b = sqlitedatabase;
    }

    public final User a(String s)
    {
        Cursor cursor = b.query(false, "rest_user", a, (new StringBuilder("account ='")).append(s).append("'").toString(), null, null, null, null, null);
        boolean flag = cursor.moveToFirst();
        User user = null;
        if (flag)
        {
            user = new User();
            user.setId(cursor.getInt(0));
            user.setAccount(cursor.getString(1));
            user.setPassword(cursor.getString(2));
            user.setRole(cursor.getInt(3));
        }
        cursor.close();
        return user;
    }

    public final List a()
    {
        ArrayList arraylist = new ArrayList();
        Cursor cursor = b.query(false, "rest_user", a, "id!=1", null, null, null, null, null);
        if (cursor.moveToFirst())
        {
            do
            {
                User user = new User();
                user.setId(cursor.getInt(0));
                user.setAccount(cursor.getString(1));
                user.setPassword(cursor.getString(2));
                user.setRole(cursor.getInt(3));
                arraylist.add(user);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final void a(int i)
    {
        b.delete("rest_user", (new StringBuilder("id=")).append(i).toString(), null);
    }

    public final void a(User user)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("account", user.getAccount());
        contentvalues.put("password", user.getPassword());
        contentvalues.put("role", Integer.valueOf(user.getRole()));
        b.insert("rest_user", null, contentvalues);
    }

    public final void b(User user)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("account", user.getAccount());
        contentvalues.put("password", user.getPassword());
        contentvalues.put("role", Integer.valueOf(user.getRole()));
        b.update("rest_user", contentvalues, (new StringBuilder("id=")).append(user.getId()).toString(), null);
    }

}
