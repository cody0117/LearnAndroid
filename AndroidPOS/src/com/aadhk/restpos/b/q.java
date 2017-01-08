// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.b;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.aadhk.restpos.bean.OrderPayment;
import java.util.ArrayList;
import java.util.List;

public final class q
{

    private static final String a[] = {
        "orderid", "amount", "paidAmt", "changeAmt", "paymentTime", "paymentMethodName", "paymentMethodType", "cashierName"
    };
    private final SQLiteDatabase b;

    public q(SQLiteDatabase sqlitedatabase)
    {
        b = sqlitedatabase;
    }

    public final List a(long l)
    {
        ArrayList arraylist = new ArrayList();
        Cursor cursor = b.query(false, "rest_order_payment", a, (new StringBuilder("orderId=")).append(l).toString(), null, null, null, null, null);
        if (cursor.moveToFirst())
        {
            do
            {
                OrderPayment orderpayment = new OrderPayment();
                orderpayment.setOrderId(cursor.getLong(0));
                orderpayment.setAmount(cursor.getDouble(1));
                orderpayment.setPaid(cursor.getDouble(2));
                orderpayment.setChangeAmt(cursor.getDouble(3));
                orderpayment.setPaymentTime(cursor.getString(4));
                orderpayment.setPaymentMethodName(cursor.getString(5));
                orderpayment.setPaymentMethodType(cursor.getInt(6));
                orderpayment.setCashierName(cursor.getString(7));
                arraylist.add(orderpayment);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

}
