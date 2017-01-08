// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.b;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.aadhk.restpos.bean.CashRegister;
import com.aadhk.restpos.bean.CloseOutCashRegister;
import java.util.ArrayList;
import java.util.List;

public final class a
{

    private static final String a[] = {
        "rowid as _id", "amount", "tranxType", "date", "time", "note"
    };
    private final SQLiteDatabase b;

    public a(SQLiteDatabase sqlitedatabase)
    {
        b = sqlitedatabase;
    }

    public final double a(int i, String s)
    {
        String s1;
        String s2;
        Cursor cursor;
        double d;
        if (s == null)
        {
            s1 = "";
        } else
        {
            s1 = (new StringBuilder(" and date||' '||time='")).append(s).append("'").toString();
        }
        s2 = (new StringBuilder("select max(date||' '||time),amount from rest_cash_register where tranxType=")).append(i).append(s1).toString();
        cursor = b.rawQuery(s2, null);
        if (cursor.moveToFirst())
        {
            d = cursor.getDouble(1);
        } else
        {
            d = 0.0D;
        }
        cursor.close();
        return d;
    }

    public final double a(String s, String s1, int i)
    {
        String s2;
        String s3;
        Cursor cursor;
        double d;
        if (s != null)
        {
            s2 = (new StringBuilder(" and date||' '||time>'")).append(s).append("' and date||' '||time<='").append(s1).append("'").toString();
        } else
        {
            s2 = (new StringBuilder(" and date||' '||time<='")).append(s1).append("'").toString();
        }
        s3 = (new StringBuilder("select total(amount) from rest_cash_register where tranxType=")).append(i).append(s2).toString();
        cursor = b.rawQuery(s3, null);
        if (cursor.moveToFirst())
        {
            d = cursor.getDouble(0);
        } else
        {
            d = 0.0D;
        }
        cursor.close();
        return d;
    }

    public final int a(long l)
    {
        int i;
        b.beginTransaction();
        i = b.delete("rest_cash_register", (new StringBuilder("rowid=")).append(l).toString(), null);
        b.setTransactionSuccessful();
        b.endTransaction();
        return i;
        Exception exception;
        exception;
        b.endTransaction();
        throw exception;
    }

    public final String a(String s)
    {
        String s1;
        String s2;
        Cursor cursor;
        String s3;
        if (s == null)
        {
            s1 = "";
        } else
        {
            s1 = (new StringBuilder("and date||' '||time<'")).append(s).append("'").toString();
        }
        s2 = (new StringBuilder("select max(date||' '||time) from rest_cash_register where tranxType=0 ")).append(s1).toString();
        cursor = b.rawQuery(s2, null);
        if (cursor.moveToFirst())
        {
            s3 = cursor.getString(0);
        } else
        {
            s3 = null;
        }
        cursor.close();
        return s3;
    }

    public final List a(String s, String s1)
    {
        ArrayList arraylist = new ArrayList();
        String s2;
        Cursor cursor;
        if (s != null)
        {
            s2 = (new StringBuilder(" (date||' '||time='")).append(s).append("' and tranxType=0) or (date||' '||time>'").append(s).append("' and date||' '||time<='").append(s1).append("')").toString();
        } else
        {
            s2 = (new StringBuilder(" date||' '||time<='")).append(s1).append("'").toString();
        }
        cursor = b.query(false, "rest_cash_register", a, s2, null, null, null, null, null);
        if (cursor.moveToFirst())
        {
            do
            {
                CashRegister cashregister = new CashRegister();
                cashregister.setId(cursor.getLong(0));
                cashregister.setAmount(cursor.getDouble(1));
                cashregister.setTranxType(cursor.getInt(2));
                cashregister.setDate(cursor.getString(3));
                cashregister.setTime(cursor.getString(4));
                cashregister.setNote(cursor.getString(5));
                arraylist.add(cashregister);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final void a(CashRegister cashregister)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("amount", Double.valueOf(cashregister.getAmount()));
        contentvalues.put("tranxType", Integer.valueOf(cashregister.getTranxType()));
        contentvalues.put("date", cashregister.getDate());
        contentvalues.put("time", cashregister.getTime());
        contentvalues.put("note", cashregister.getNote());
        b.insert("rest_cash_register", null, contentvalues);
    }

    public final void a(CloseOutCashRegister closeoutcashregister)
    {
        b.beginTransaction();
        if (closeoutcashregister.getLastTime() == null)
        {
            break MISSING_BLOCK_LABEL_155;
        }
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("amount", Double.valueOf(closeoutcashregister.getStartAmount()));
        b.update("rest_cash_register", contentvalues, (new StringBuilder("date||' '||time='")).append(closeoutcashregister.getLastTime()).append("'").toString(), null);
_L1:
        ContentValues contentvalues1 = new ContentValues();
        contentvalues1.put("amount", Double.valueOf(closeoutcashregister.getNextAmount()));
        contentvalues1.put("tranxType", Integer.valueOf(0));
        contentvalues1.put("date", closeoutcashregister.getDate());
        contentvalues1.put("time", closeoutcashregister.getTime());
        b.insert("rest_cash_register", null, contentvalues1);
        b.setTransactionSuccessful();
        b.endTransaction();
        return;
        ContentValues contentvalues2 = new ContentValues();
        contentvalues2.put("amount", Double.valueOf(closeoutcashregister.getStartAmount()));
        contentvalues2.put("tranxType", Integer.valueOf(-1));
        contentvalues2.put("date", closeoutcashregister.getDate());
        contentvalues2.put("time", closeoutcashregister.getTime());
        b.insert("rest_cash_register", null, contentvalues2);
          goto _L1
        Exception exception;
        exception;
        b.endTransaction();
        throw exception;
    }

    public final double b(String s, String s1)
    {
        String s2 = (new StringBuilder(" and endtime<='")).append(s1).append("'").toString();
        if (s != null)
        {
            s2 = (new StringBuilder(" and endtime>='")).append(s).append("' and endtime<='").append(s1).append("'").toString();
        }
        String s3 = (new StringBuilder("select total(payment.amount) from rest_order as cashOrder, rest_order_payment as payment where cashOrder.rowid=payment.orderId and payment.paymentMethodType=0")).append(s2).append(" and status=1").toString();
        Cursor cursor = b.rawQuery(s3, null);
        double d;
        if (cursor.moveToFirst())
        {
            d = cursor.getDouble(0);
        } else
        {
            d = 0.0D;
        }
        cursor.close();
        return d;
    }

    public final int b(CashRegister cashregister)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("amount", Double.valueOf(cashregister.getAmount()));
        contentvalues.put("tranxType", Integer.valueOf(cashregister.getTranxType()));
        contentvalues.put("date", cashregister.getDate());
        contentvalues.put("time", cashregister.getTime());
        contentvalues.put("note", cashregister.getNote());
        return b.update("rest_cash_register", contentvalues, (new StringBuilder("rowid=")).append(cashregister.getId()).toString(), null);
    }

}
