// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.b;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.aadhk.restpos.bean.TableGroup;
import java.util.ArrayList;
import java.util.List;

public final class aa
{

    private final SQLiteDatabase a;

    public aa(SQLiteDatabase sqlitedatabase)
    {
        a = sqlitedatabase;
    }

    public final void a()
    {
        a.beginTransaction();
        a.delete("rest_table_group", null, null);
        a.delete("rest_table", null, null);
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
    }

    public final void a(long l)
    {
        a.beginTransaction();
        a.delete("rest_table_group", (new StringBuilder("tableGroupId=")).append(l).toString(), null);
        a.delete("rest_table", (new StringBuilder("tableGroupId=")).append(l).toString(), null);
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
    }

    public final void a(TableGroup tablegroup)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("name", tablegroup.getName());
        a.insert("rest_table_group", null, contentvalues);
    }

    public final boolean a(int i)
    {
        String as[] = {
            "tableGroupId"
        };
        String s = "isOpen=1";
        if (i > 0)
        {
            s = (new StringBuilder()).append(s).append(" and tableGroupId=").append(i).toString();
        }
        Cursor cursor = a.query(false, "rest_table", as, s, null, null, null, null, null);
        int j = cursor.getCount();
        boolean flag = false;
        if (j != 0)
        {
            flag = true;
        }
        cursor.close();
        return flag;
    }

    public final List b()
    {
        ArrayList arraylist = new ArrayList();
        Cursor cursor = a.rawQuery("select tableGroupId, name  from rest_table_group", null);
        if (cursor.moveToFirst())
        {
            do
            {
                TableGroup tablegroup = new TableGroup();
                tablegroup.setTableGroupId(cursor.getInt(0));
                tablegroup.setName(cursor.getString(1));
                arraylist.add(tablegroup);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final void b(TableGroup tablegroup)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("name", tablegroup.getName());
        a.update("rest_table_group", contentvalues, (new StringBuilder("tableGroupId=")).append(tablegroup.getTableGroupId()).toString(), null);
    }
}
