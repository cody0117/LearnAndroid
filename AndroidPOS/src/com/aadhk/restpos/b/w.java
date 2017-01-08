// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.b;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.aadhk.restpos.bean.RolePermission;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class w
{

    private static final String a[] = {
        "rowid as _id", "role", "function", "isShow", "managerPermission"
    };
    private final SQLiteDatabase b;

    public w(SQLiteDatabase sqlitedatabase)
    {
        b = sqlitedatabase;
    }

    public final List a(int i)
    {
        ArrayList arraylist = new ArrayList();
        Cursor cursor = b.query(false, "rest_role_permission", a, (new StringBuilder("role=")).append(i).toString(), null, null, null, "function asc", null);
        if (cursor.moveToFirst())
        {
            do
            {
                RolePermission rolepermission = new RolePermission();
                rolepermission.setId(cursor.getInt(0));
                rolepermission.setRole(cursor.getInt(1));
                rolepermission.setFunction(cursor.getInt(2));
                boolean flag;
                boolean flag1;
                if (cursor.getInt(3) == 1)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                rolepermission.setShow(flag);
                if (cursor.getInt(4) == 1)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                rolepermission.setManagerPermission(flag1);
                arraylist.add(rolepermission);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final void a(List list)
    {
        b.beginTransaction();
        RolePermission rolepermission;
        ContentValues contentvalues;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); b.update("rest_role_permission", contentvalues, (new StringBuilder("rowid=")).append(rolepermission.getId()).toString(), null))
        {
            rolepermission = (RolePermission)iterator.next();
            contentvalues = new ContentValues();
            contentvalues.put("isShow", Boolean.valueOf(rolepermission.isShow()));
            contentvalues.put("managerPermission", Boolean.valueOf(rolepermission.isManagerPermission()));
        }

        break MISSING_BLOCK_LABEL_119;
        Exception exception;
        exception;
        b.endTransaction();
        throw exception;
        b.setTransactionSuccessful();
        b.endTransaction();
        return;
    }

    public final Map b(int i)
    {
        HashMap hashmap = new HashMap();
        Cursor cursor = b.query(false, "rest_role_permission", a, (new StringBuilder("role=")).append(i).toString(), null, null, null, null, null);
        if (cursor.moveToFirst())
        {
            do
            {
                RolePermission rolepermission = new RolePermission();
                rolepermission.setId(cursor.getInt(0));
                rolepermission.setRole(cursor.getInt(1));
                rolepermission.setFunction(cursor.getInt(2));
                boolean flag;
                boolean flag1;
                if (cursor.getInt(3) == 1)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                rolepermission.setShow(flag);
                if (cursor.getInt(4) == 1)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                rolepermission.setManagerPermission(flag1);
                hashmap.put(Integer.valueOf(cursor.getInt(2)), rolepermission);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return hashmap;
    }

}
