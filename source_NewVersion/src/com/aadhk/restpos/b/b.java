// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.b;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.aadhk.restpos.bean.Category;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class b
{

    private static final String a[] = {
        "rowid as _id", "name", "sequence"
    };
    private final SQLiteDatabase b;

    public b(SQLiteDatabase sqlitedatabase)
    {
        b = sqlitedatabase;
    }

    public final void a()
    {
        b.beginTransaction();
        b.delete("rest_category", null, null);
        b.delete("rest_item", null, null);
        b.setTransactionSuccessful();
        b.endTransaction();
        return;
        Exception exception;
        exception;
        b.endTransaction();
        throw exception;
    }

    public final void a(long l)
    {
        b.beginTransaction();
        b.delete("rest_item", (new StringBuilder("categoryid=")).append(l).toString(), null);
        b.delete("rest_category", (new StringBuilder("rowid=")).append(l).toString(), null);
        b.setTransactionSuccessful();
        b.endTransaction();
        return;
        Exception exception;
        exception;
        b.endTransaction();
        throw exception;
    }

    public final void a(Category category)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("name", category.getName());
        int i = 1;
        Cursor cursor = b.rawQuery("select max(sequence) from rest_category", null);
        if (cursor.moveToFirst())
        {
            i = 1 + cursor.getInt(0);
        }
        cursor.close();
        contentvalues.put("sequence", Integer.valueOf(i));
        b.insert("rest_category", null, contentvalues);
    }

    public final void a(List list)
    {
        b.beginTransaction();
        for (Iterator iterator = list.iterator(); iterator.hasNext(); a((Category)iterator.next())) { }
        break MISSING_BLOCK_LABEL_49;
        Exception exception;
        exception;
        b.endTransaction();
        throw exception;
        b.setTransactionSuccessful();
        b.endTransaction();
        return;
    }

    public final boolean a(String s)
    {
        String as[] = {
            "a.rowid"
        };
        String s1;
        Cursor cursor;
        int i;
        boolean flag;
        if (s != null)
        {
            s1 = (new StringBuilder("  b.categoryid=c.rowid and  a.itemid=b.rowid and d.rowid=a.orderid and d.status=0 and ")).append(s).toString();
        } else
        {
            s1 = "  b.categoryid=c.rowid and  a.itemid=b.rowid and d.rowid=a.orderid and d.status=0";
        }
        cursor = b.query(false, "rest_orderItem a, rest_item b,  rest_category c, rest_order d ", as, s1, null, null, null, null, null);
        i = cursor.getCount();
        flag = false;
        if (i != 0)
        {
            flag = true;
        }
        cursor.close();
        return flag;
    }

    public final List b()
    {
        ArrayList arraylist = new ArrayList();
        Cursor cursor = b.query(false, "rest_category", a, null, null, null, null, "sequence desc", null);
        if (cursor.moveToFirst())
        {
            do
            {
                Category category = new Category();
                category.setId(cursor.getLong(0));
                category.setName(cursor.getString(1));
                category.setSequence(cursor.getInt(2));
                arraylist.add(category);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final void b(Category category)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("name", category.getName());
        contentvalues.put("sequence", Integer.valueOf(category.getSequence()));
        b.update("rest_category", contentvalues, (new StringBuilder("rowid=")).append(category.getId()).toString(), null);
    }

    public final void b(List list)
    {
        b.beginTransaction();
        ContentValues contentvalues = new ContentValues();
        Category category;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); b.update("rest_category", contentvalues, (new StringBuilder("rowid=")).append(category.getId()).toString(), null))
        {
            category = (Category)iterator.next();
            contentvalues.clear();
            contentvalues.put("sequence", Integer.valueOf(category.getSequence()));
        }

        break MISSING_BLOCK_LABEL_108;
        Exception exception;
        exception;
        b.endTransaction();
        throw exception;
        b.setTransactionSuccessful();
        b.endTransaction();
        return;
    }

}
