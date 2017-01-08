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
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.aadhk.restpos.b:
//            i

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
        contentvalues.put("sequence", Integer.valueOf(category.getSequence()));
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

    public final void a(Map map)
    {
        b.beginTransaction();
        ContentValues contentvalues = new ContentValues();
        java.util.Map.Entry entry;
        for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); b.update("rest_category", contentvalues, (new StringBuilder("rowid=")).append((String)entry.getKey()).toString(), null))
        {
            entry = (java.util.Map.Entry)iterator.next();
            contentvalues.clear();
            contentvalues.put("sequence", (Integer)entry.getValue());
        }

        break MISSING_BLOCK_LABEL_120;
        Exception exception;
        exception;
        b.endTransaction();
        throw exception;
        b.setTransactionSuccessful();
        b.endTransaction();
        return;
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

    public final boolean b(long l)
    {
        String as[] = {
            "a.rowid"
        };
        String s;
        Cursor cursor;
        int j;
        boolean flag;
        if (l > 0L)
        {
            s = (new StringBuilder("  b.categoryid=c.rowid and  a.itemid=b.rowid and d.rowid=a.orderid and d.status=0 and c.rowid=")).append(l).toString();
        } else
        {
            s = "  b.categoryid=c.rowid and  a.itemid=b.rowid and d.rowid=a.orderid and d.status=0";
        }
        cursor = b.query(false, "rest_order_item a, rest_item b,  rest_category c, rest_order d ", as, s, null, null, null, null, null);
        j = cursor.getCount();
        flag = false;
        if (j != 0)
        {
            flag = true;
        }
        cursor.close();
        return flag;
    }

    public final List c()
    {
        ArrayList arraylist = new ArrayList();
        i j = new i(b);
        Cursor cursor = b.query(false, "rest_category", a, null, null, null, null, "sequence desc", null);
        if (cursor.moveToFirst())
        {
            do
            {
                Category category = new Category();
                category.setId(cursor.getLong(0));
                category.setName(cursor.getString(1));
                category.setSequence(cursor.getInt(2));
                category.setItemList(j.c(category.getId()));
                arraylist.add(category);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

}
