// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.b;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.aadhk.restpos.bean.PaymentMethod;
import java.util.ArrayList;
import java.util.List;

public final class r
{

    private static final String a[] = {
        "rowid as _id", "name", "type", "rounding", "openDrawer", "beDefault"
    };
    private final SQLiteDatabase b;

    public r(SQLiteDatabase sqlitedatabase)
    {
        b = sqlitedatabase;
    }

    public final List a()
    {
        ArrayList arraylist = new ArrayList();
        Cursor cursor = b.query(false, "rest_payment_method", a, null, null, null, null, "rowid asc", null);
        if (cursor.moveToFirst())
        {
            do
            {
                PaymentMethod paymentmethod = new PaymentMethod();
                paymentmethod.setId(cursor.getInt(0));
                paymentmethod.setName(cursor.getString(1));
                paymentmethod.setType(cursor.getInt(2));
                paymentmethod.setRounding(cursor.getString(3));
                boolean flag;
                boolean flag1;
                if (cursor.getInt(4) == 1)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                paymentmethod.setOpenDrawer(flag);
                if (cursor.getInt(5) == 1)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                paymentmethod.setBeDefault(flag1);
                arraylist.add(paymentmethod);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final void a(long l)
    {
        b.beginTransaction();
        b.delete("rest_payment_method", (new StringBuilder("rowid=")).append(l).toString(), null);
        b.setTransactionSuccessful();
        b.endTransaction();
        return;
        Exception exception;
        exception;
        b.endTransaction();
        throw exception;
    }

    public final void a(PaymentMethod paymentmethod)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("name", paymentmethod.getName());
        contentvalues.put("type", Integer.valueOf(paymentmethod.getType()));
        contentvalues.put("rounding", paymentmethod.getRounding());
        contentvalues.put("openDrawer", Boolean.valueOf(paymentmethod.isOpenDrawer()));
        contentvalues.put("beDefault", Boolean.valueOf(paymentmethod.isBeDefault()));
        b.insert("rest_payment_method", null, contentvalues);
    }

    public final void b(PaymentMethod paymentmethod)
    {
        b.beginTransaction();
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("name", paymentmethod.getName());
        contentvalues.put("type", Integer.valueOf(paymentmethod.getType()));
        contentvalues.put("rounding", paymentmethod.getRounding());
        contentvalues.put("openDrawer", Boolean.valueOf(paymentmethod.isOpenDrawer()));
        contentvalues.put("beDefault", Boolean.valueOf(paymentmethod.isBeDefault()));
        b.update("rest_payment_method", contentvalues, (new StringBuilder("rowid=")).append(paymentmethod.getId()).toString(), null);
        if (paymentmethod.isBeDefault())
        {
            ContentValues contentvalues1 = new ContentValues();
            contentvalues1.put("beDefault", Integer.valueOf(0));
            b.update("rest_payment_method", contentvalues1, (new StringBuilder("rowid!=")).append(paymentmethod.getId()).toString(), null);
        }
        b.setTransactionSuccessful();
        b.endTransaction();
        return;
        Exception exception;
        exception;
        b.endTransaction();
        throw exception;
    }

}
