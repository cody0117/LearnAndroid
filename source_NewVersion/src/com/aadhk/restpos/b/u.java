// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.b;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.SplitBill;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class u
{

    private static final String a[] = {
        "rowid as _id", "orderId", "amount", "isPaid"
    };
    private final SQLiteDatabase b;

    public u(SQLiteDatabase sqlitedatabase)
    {
        b = sqlitedatabase;
    }

    public final void a(long l)
    {
        b.beginTransaction();
        b.delete("rest_splitBill", (new StringBuilder("orderId=")).append(l).toString(), null);
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("billId", Integer.valueOf(0));
        b.update("rest_orderItem", contentvalues, (new StringBuilder("orderId=")).append(l).toString(), null);
        ContentValues contentvalues1 = new ContentValues();
        contentvalues1.put("splitType", Short.valueOf((short)0));
        b.update("rest_order", contentvalues1, (new StringBuilder("rowid=")).append(l).toString(), null);
        b.setTransactionSuccessful();
        b.endTransaction();
        return;
        Exception exception;
        exception;
        b.endTransaction();
        throw exception;
    }

    public final void a(long l, long l1, List list, double d1)
    {
        ContentValues contentvalues;
        b.beginTransaction();
        contentvalues = new ContentValues();
        if (!list.isEmpty()) goto _L2; else goto _L1
_L1:
        b.delete("rest_splitBill", (new StringBuilder("rowid=")).append(l1).append(" and orderId=").append(l).toString(), null);
        Cursor cursor = b.query(false, "rest_splitBill", new String[] {
            "rowid"
        }, (new StringBuilder("orderId=")).append(l).toString(), null, null, null, null, null);
        if (cursor.getCount() == 0)
        {
            ContentValues contentvalues4 = new ContentValues();
            contentvalues4.put("splitType", Short.valueOf((short)0));
            b.update("rest_order", contentvalues4, (new StringBuilder("rowid=")).append(l).toString(), null);
        }
        cursor.close();
_L3:
        ContentValues contentvalues2 = new ContentValues();
        contentvalues2.put("billId", Integer.valueOf(0));
        b.update("rest_orderItem", contentvalues2, (new StringBuilder("orderId=")).append(l).append(" and billId=").append(l1).toString(), null);
        OrderItem orderitem;
        ContentValues contentvalues3;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); b.update("rest_orderItem", contentvalues3, (new StringBuilder("rowid=")).append(orderitem.getId()).toString(), null))
        {
            orderitem = (OrderItem)iterator.next();
            contentvalues3 = new ContentValues();
            contentvalues3.put("billId", Long.valueOf(l1));
        }

        break MISSING_BLOCK_LABEL_443;
        Exception exception;
        exception;
        b.endTransaction();
        throw exception;
_L2:
        if (l1 <= 0L)
        {
            break MISSING_BLOCK_LABEL_344;
        }
        contentvalues.put("rowId", Long.valueOf(l1));
        contentvalues.put("orderId", Long.valueOf(l));
        contentvalues.put("amount", Double.valueOf(d1));
        contentvalues.put("isPaid", Integer.valueOf(0));
        l1 = b.replace("rest_splitBill", null, contentvalues);
        ContentValues contentvalues1 = new ContentValues();
        contentvalues1.put("splitType", Short.valueOf((short)2));
        b.update("rest_order", contentvalues1, (new StringBuilder("rowid=")).append(l).toString(), null);
          goto _L3
        b.setTransactionSuccessful();
        b.endTransaction();
        return;
    }

    public final void a(long l, long l1, boolean flag)
    {
        b.beginTransaction();
        b.delete("rest_splitBill", (new StringBuilder("rowid=")).append(l).append(" and orderId=").append(l1).toString(), null);
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("billId", Integer.valueOf(0));
        b.update("rest_orderItem", contentvalues, (new StringBuilder("orderId=")).append(l1).append(" and billId=").append(l).toString(), null);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_155;
        }
        ContentValues contentvalues1 = new ContentValues();
        contentvalues1.put("splitType", Short.valueOf((short)0));
        b.update("rest_order", contentvalues1, (new StringBuilder("rowid=")).append(l1).toString(), null);
        b.setTransactionSuccessful();
        b.endTransaction();
        return;
        Exception exception;
        exception;
        b.endTransaction();
        throw exception;
    }

    public final void a(SplitBill splitbill)
    {
        b.beginTransaction();
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("orderId", Long.valueOf(splitbill.getOrderId()));
        contentvalues.put("amount", Double.valueOf(splitbill.getAmount()));
        contentvalues.put("isPaid", Boolean.valueOf(splitbill.isPaid()));
        b.insert("rest_splitBill", null, contentvalues);
        ContentValues contentvalues1 = new ContentValues();
        contentvalues1.put("splitType", Short.valueOf((short)1));
        b.update("rest_order", contentvalues1, (new StringBuilder("rowid=")).append(splitbill.getOrderId()).toString(), null);
        b.setTransactionSuccessful();
        b.endTransaction();
        return;
        Exception exception;
        exception;
        b.endTransaction();
        throw exception;
    }

    public final void a(List list, long l)
    {
        b.beginTransaction();
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("splitType", Short.valueOf((short)1));
        b.update("rest_order", contentvalues, (new StringBuilder("rowid=")).append(l).toString(), null);
        b.delete("rest_splitBill", (new StringBuilder("orderId=")).append(l).toString(), null);
        ContentValues contentvalues1;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); b.insert("rest_splitBill", null, contentvalues1))
        {
            SplitBill splitbill = (SplitBill)iterator.next();
            contentvalues1 = new ContentValues();
            contentvalues1.put("orderId", Long.valueOf(splitbill.getOrderId()));
            contentvalues1.put("amount", Double.valueOf(splitbill.getAmount()));
            contentvalues1.put("isPaid", Boolean.valueOf(splitbill.isPaid()));
        }

        break MISSING_BLOCK_LABEL_195;
        Exception exception;
        exception;
        b.endTransaction();
        throw exception;
        b.setTransactionSuccessful();
        b.endTransaction();
        return;
    }

    public final List b(long l)
    {
        ArrayList arraylist = new ArrayList();
        Cursor cursor = b.query(false, "rest_splitBill", a, (new StringBuilder("orderId=")).append(l).toString(), null, null, null, "isPaid", null);
        if (cursor.moveToFirst())
        {
            do
            {
                SplitBill splitbill = new SplitBill();
                splitbill.setId(cursor.getLong(0));
                splitbill.setOrderId(cursor.getLong(1));
                splitbill.setAmount(cursor.getDouble(2));
                boolean flag;
                if (cursor.getInt(3) != 0)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                splitbill.setPaid(flag);
                arraylist.add(splitbill);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final void b(SplitBill splitbill)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("amount", Double.valueOf(splitbill.getAmount()));
        contentvalues.put("isPaid", Boolean.valueOf(splitbill.isPaid()));
        b.update("rest_splitBill", contentvalues, (new StringBuilder("rowid=")).append(splitbill.getId()).toString(), null);
    }

    public final List c(long l)
    {
        ArrayList arraylist = new ArrayList();
        Cursor cursor = b.query(false, "rest_splitBill", a, (new StringBuilder("isPaid=0 and orderId=")).append(l).toString(), null, null, null, null, null);
        if (cursor.moveToFirst())
        {
            do
            {
                SplitBill splitbill = new SplitBill();
                splitbill.setId(cursor.getLong(0));
                splitbill.setOrderId(cursor.getLong(1));
                splitbill.setAmount(cursor.getDouble(2));
                arraylist.add(splitbill);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final boolean d(long l)
    {
        String s = (new StringBuilder("select rowid from rest_splitBill where orderId=")).append(l).append(" and isPaid=1").toString();
        String s1 = (new StringBuilder("select rowid from rest_splitBill where orderId=")).append(l).append(" and isPaid=0").toString();
        Cursor cursor = b.rawQuery(s, null);
        int i = cursor.getCount();
        boolean flag = false;
        if (i > 0)
        {
            Cursor cursor1 = b.rawQuery(s1, null);
            int j = cursor1.getCount();
            flag = false;
            if (j > 0)
            {
                flag = true;
            }
            cursor1.close();
        }
        cursor.close();
        return flag;
    }

    public final double e(long l)
    {
        double d1 = 0.0D;
        String s = (new StringBuilder("select total(amount) from rest_splitBill where orderId=")).append(l).toString();
        Cursor cursor = b.rawQuery(s, null);
        if (cursor.moveToFirst())
        {
            d1 = cursor.getDouble(0);
        }
        cursor.close();
        return d1;
    }

}
