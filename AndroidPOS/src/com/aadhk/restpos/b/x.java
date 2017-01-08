// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.b;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.aadhk.restpos.bean.ServiceFee;
import java.util.ArrayList;
import java.util.List;

public final class x
{

    private final SQLiteDatabase a;

    public x(SQLiteDatabase sqlitedatabase)
    {
        a = sqlitedatabase;
    }

    public final List a()
    {
        ArrayList arraylist = new ArrayList();
        Cursor cursor = a.query(false, "rest_service_fee", new String[] {
            "rowid as _id", "name", "isPercentage", "amount"
        }, null, null, null, null, null, null);
        if (cursor.moveToFirst())
        {
            do
            {
                ServiceFee servicefee = new ServiceFee();
                servicefee.setId(cursor.getInt(0));
                servicefee.setName(cursor.getString(1));
                boolean flag;
                if (cursor.getInt(2) == 1)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                servicefee.setPercentage(flag);
                servicefee.setAmount(cursor.getDouble(3));
                arraylist.add(servicefee);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final void a(int i)
    {
        a.delete("rest_service_fee", (new StringBuilder("rowid=")).append(i).toString(), null);
    }

    public final void a(ServiceFee servicefee)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("name", servicefee.getName());
        contentvalues.put("isPercentage", Boolean.valueOf(servicefee.isPercentage()));
        contentvalues.put("amount", Double.valueOf(servicefee.getAmount()));
        a.insert("rest_service_fee", null, contentvalues);
    }

    public final void b(ServiceFee servicefee)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("name", servicefee.getName());
        contentvalues.put("isPercentage", Boolean.valueOf(servicefee.isPercentage()));
        contentvalues.put("amount", Double.valueOf(servicefee.getAmount()));
        a.update("rest_service_fee", contentvalues, (new StringBuilder("rowid=")).append(servicefee.getId()).toString(), null);
    }
}
