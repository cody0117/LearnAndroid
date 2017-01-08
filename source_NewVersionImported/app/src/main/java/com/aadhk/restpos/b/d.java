// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.b;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.aadhk.product.library.bean.Currency;
import java.util.ArrayList;
import java.util.List;

public final class d
{

    private static final String a[] = {
        "currencyCode", "currencySymbol", "currencyDesc", "isDefault"
    };
    private final SQLiteDatabase b;

    public d(SQLiteDatabase sqlitedatabase)
    {
        b = sqlitedatabase;
    }

    public final List a()
    {
        ArrayList arraylist = new ArrayList();
        Cursor cursor = b.query(false, "currency", a, null, null, null, null, "currencyCode asc", null);
        if (cursor.moveToFirst())
        {
            do
            {
                String s = cursor.getString(0);
                String s1 = cursor.getString(1);
                String s2 = cursor.getString(2);
                boolean flag;
                Currency currency;
                if (cursor.getInt(3) != 0)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                currency = new Currency();
                currency.a(s);
                currency.b(s1);
                currency.c(s2);
                currency.a(flag);
                arraylist.add(currency);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final void a(Currency currency)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("currencyCode", currency.a());
        contentvalues.put("currencySymbol", currency.b());
        contentvalues.put("currencyDesc", currency.c());
        contentvalues.put("isDefault", Boolean.valueOf(currency.d()));
        b.insert("currency", null, contentvalues);
    }

    public final void a(Currency currency, String s)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("currencyCode", currency.a());
        contentvalues.put("currencySymbol", currency.b());
        contentvalues.put("currencyDesc", currency.c());
        contentvalues.put("isDefault", Boolean.valueOf(currency.d()));
        b.update("currency", contentvalues, (new StringBuilder("currencyCode='")).append(s).append("'").toString(), null);
    }

    public final void a(String s)
    {
        b.delete("currency", (new StringBuilder("currencyCode='")).append(s).append("'").toString(), null);
    }

}
