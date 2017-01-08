// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.b;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.aadhk.restpos.bean.Customer;
import java.util.ArrayList;
import java.util.List;

public final class e
{

    private String a[] = {
        "id", "name", "address1", "address2", "address3", "tel", "email", "expenseAmount"
    };
    private final SQLiteDatabase b;

    public e(SQLiteDatabase sqlitedatabase)
    {
        b = sqlitedatabase;
    }

    public final Customer a(long l)
    {
        Cursor cursor = b.query(false, "rest_customer", a, (new StringBuilder("id=")).append(l).toString(), null, null, null, null, null);
        boolean flag = cursor.moveToFirst();
        Customer customer = null;
        if (flag)
        {
            customer = new Customer();
            customer.setId(cursor.getInt(0));
            customer.setName(cursor.getString(1));
            customer.setAddress1(cursor.getString(2));
            customer.setAddress2(cursor.getString(3));
            customer.setAddress3(cursor.getString(4));
            customer.setTel(cursor.getString(5));
            customer.setEmail(cursor.getString(6));
            customer.setExpenseAmount(cursor.getDouble(7));
        }
        cursor.close();
        return customer;
    }

    public final List a()
    {
        ArrayList arraylist = new ArrayList();
        Cursor cursor = b.query(false, "rest_customer", a, null, null, null, null, "tel asc", null);
        if (cursor.moveToFirst())
        {
            do
            {
                Customer customer = new Customer();
                customer.setId(cursor.getInt(0));
                customer.setName(cursor.getString(1));
                customer.setAddress1(cursor.getString(2));
                customer.setAddress2(cursor.getString(3));
                customer.setAddress3(cursor.getString(4));
                customer.setTel(cursor.getString(5));
                customer.setEmail(cursor.getString(6));
                customer.setExpenseAmount(cursor.getDouble(7));
                arraylist.add(customer);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final List a(String s)
    {
        ArrayList arraylist = new ArrayList();
        String s1;
        Cursor cursor;
        if (s != null && !s.equals(""))
        {
            s1 = (new StringBuilder(" tel like '")).append(s).append("%'").toString();
        } else
        {
            s1 = null;
        }
        cursor = b.query(false, "rest_customer", a, s1, null, null, null, "id asc", null);
        if (cursor.moveToFirst())
        {
            do
            {
                Customer customer = new Customer();
                customer.setId(cursor.getInt(0));
                customer.setName(cursor.getString(1));
                customer.setAddress1(cursor.getString(2));
                customer.setAddress2(cursor.getString(3));
                customer.setAddress3(cursor.getString(4));
                customer.setTel(cursor.getString(5));
                customer.setEmail(cursor.getString(6));
                customer.setExpenseAmount(cursor.getDouble(7));
                arraylist.add(customer);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final void a(int i)
    {
        b.delete("rest_customer", (new StringBuilder("id=")).append(i).toString(), null);
    }

    public final void a(Customer customer)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("name", customer.getName());
        contentvalues.put("address1", customer.getAddress1());
        contentvalues.put("address2", customer.getAddress2());
        contentvalues.put("address3", customer.getAddress3());
        contentvalues.put("tel", customer.getTel());
        contentvalues.put("email", customer.getEmail());
        b.insert("rest_customer", null, contentvalues);
    }

    public final boolean a(long l, String s)
    {
        String s1 = (new StringBuilder("rowId!=")).append(l).append(" and tel='").append(s).append("'").toString();
        Cursor cursor = b.query(false, "rest_customer", a, s1, null, null, null, null, null);
        int i = cursor.getCount();
        boolean flag = false;
        if (i > 0)
        {
            flag = true;
        }
        cursor.close();
        return flag;
    }

    public final Customer b(String s)
    {
        Cursor cursor = b.query(false, "rest_customer", a, (new StringBuilder("tel=")).append(s).toString(), null, null, null, "id asc", null);
        boolean flag = cursor.moveToFirst();
        Customer customer = null;
        if (flag)
        {
            customer = new Customer();
            customer.setId(cursor.getInt(0));
            customer.setName(cursor.getString(1));
            customer.setAddress1(cursor.getString(2));
            customer.setAddress2(cursor.getString(3));
            customer.setAddress3(cursor.getString(4));
            customer.setTel(cursor.getString(5));
            customer.setEmail(cursor.getString(6));
            customer.setExpenseAmount(cursor.getDouble(7));
        }
        cursor.close();
        return customer;
    }

    public final void b(Customer customer)
    {
        b.beginTransaction();
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("name", customer.getName());
        contentvalues.put("address1", customer.getAddress1());
        contentvalues.put("address2", customer.getAddress2());
        contentvalues.put("address3", customer.getAddress3());
        contentvalues.put("tel", customer.getTel());
        contentvalues.put("email", customer.getEmail());
        b.update("rest_customer", contentvalues, (new StringBuilder("rowid=")).append(customer.getId()).toString(), null);
        ContentValues contentvalues1 = new ContentValues();
        contentvalues1.put("customerName", customer.getName());
        b.update("rest_order", contentvalues1, (new StringBuilder("customerid=")).append(customer.getId()).toString(), null);
        b.setTransactionSuccessful();
        b.endTransaction();
        return;
        Exception exception;
        exception;
        b.endTransaction();
        throw exception;
    }
}
