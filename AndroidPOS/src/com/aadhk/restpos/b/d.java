// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.b;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.aadhk.restpos.bean.Currency;
import java.util.ArrayList;
import java.util.List;

public final class d
{

    private static final String a[] = {
        "rowId", "currencyCode", "currencySymbol", "currencyDesc", "isDefault"
    };
    private final SQLiteDatabase b;

    public d(SQLiteDatabase sqlitedatabase)
    {
        b = sqlitedatabase;
    }

    public final List a()
    {
        ArrayList arraylist = new ArrayList();
        Cursor cursor = b.query(false, "rest_currency", a, null, null, null, null, "currencyCode asc", null);
        if (cursor.moveToFirst())
        {
            do
            {
                int i = cursor.getInt(0);
                String s = cursor.getString(1);
                String s1 = cursor.getString(2);
                String s2 = cursor.getString(3);
                boolean flag;
                Currency currency;
                if (cursor.getInt(4) != 0)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                currency = new Currency();
                currency.setId(i);
                currency.setCode(s);
                currency.setSign(s1);
                currency.setDesc(s2);
                currency.setUse(flag);
                arraylist.add(currency);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final void a(int i)
    {
        b.delete("rest_currency", (new StringBuilder("rowid=")).append(i).toString(), null);
    }

    public final void a(Currency currency)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("currencyCode", currency.getCode());
        contentvalues.put("currencySymbol", currency.getSign());
        contentvalues.put("currencyDesc", currency.getDesc());
        contentvalues.put("isDefault", Boolean.valueOf(currency.isUse()));
        b.insert("rest_currency", null, contentvalues);
    }

    public final void b(Currency currency)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("currencyCode", currency.getCode());
        contentvalues.put("currencySymbol", currency.getSign());
        contentvalues.put("currencyDesc", currency.getDesc());
        contentvalues.put("isDefault", Boolean.valueOf(currency.isUse()));
        b.update("rest_currency", contentvalues, (new StringBuilder("rowId='")).append(currency.getId()).append("'").toString(), null);
    }

}
