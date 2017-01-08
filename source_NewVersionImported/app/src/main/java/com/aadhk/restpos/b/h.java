// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.b;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.aadhk.restpos.bean.Discount;
import java.util.ArrayList;
import java.util.List;

public final class h
{

    private final SQLiteDatabase a;

    public h(SQLiteDatabase sqlitedatabase)
    {
        a = sqlitedatabase;
    }

    public final List a()
    {
        ArrayList arraylist = new ArrayList();
        Cursor cursor = a.query(false, "rest_order_discount", new String[] {
            "rowid as _id", "reason", "isper", "amount"
        }, null, null, null, null, null, null);
        if (cursor.moveToFirst())
        {
            do
            {
                Discount discount = new Discount();
                discount.setId(cursor.getInt(0));
                discount.setReason(cursor.getString(1));
                boolean flag;
                if (cursor.getInt(2) == 1)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                discount.setPer(flag);
                discount.setAmount(cursor.getDouble(3));
                arraylist.add(discount);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final void a(int i)
    {
        a.delete("rest_order_discount", (new StringBuilder("rowid=")).append(i).toString(), null);
    }

    public final void a(Discount discount)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("reason", discount.getReason());
        contentvalues.put("isPer", Boolean.valueOf(discount.isPer()));
        contentvalues.put("amount", Double.valueOf(discount.getAmount()));
        a.insert("rest_order_discount", null, contentvalues);
    }

    public final void b(Discount discount)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("reason", discount.getReason());
        contentvalues.put("isper", Boolean.valueOf(discount.isPer()));
        contentvalues.put("amount", Double.valueOf(discount.getAmount()));
        a.update("rest_order_discount", contentvalues, (new StringBuilder("rowid=")).append(discount.getId()).toString(), null);
    }
}
