// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.b;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.Table;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class z
{

    private static final String a[] = {
        "rowid as _id", "name", "num", "isOpen", "description"
    };
    private final SQLiteDatabase b;

    public z(SQLiteDatabase sqlitedatabase)
    {
        b = sqlitedatabase;
    }

    public final List a(int i)
    {
        ArrayList arraylist;
        Cursor cursor;
        arraylist = new ArrayList();
        String s = (new StringBuilder("select rowid, name, num, isOpen  from rest_table where tableGroupId=")).append(i).append(" order by sequence desc").toString();
        cursor = b.rawQuery(s, null);
        if (!cursor.moveToFirst()) goto _L2; else goto _L1
_L1:
        Table table;
        Cursor cursor1;
        long l1;
        long l = cursor.getLong(0);
        table = new Table();
        table.setId(l);
        table.setName(cursor.getString(1));
        table.setNum(cursor.getInt(2));
        boolean flag;
        SQLiteDatabase sqlitedatabase;
        String as[];
        if (cursor.getInt(3) != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        table.setOpen(flag);
        sqlitedatabase = b;
        as = new String[1];
        as[0] = (new StringBuilder()).append(l).toString();
        cursor1 = sqlitedatabase.rawQuery("select rowid, status from rest_order where tableId=? and  (status =0 or status =3)", as);
        if (!cursor1.moveToFirst()) goto _L4; else goto _L3
_L3:
        l1 = cursor1.getLong(0);
        if (cursor1.getInt(1) != 3) goto _L6; else goto _L5
_L5:
        table.setReceipt(true);
_L4:
        cursor1.close();
        arraylist.add(table);
        if (cursor.moveToNext()) goto _L1; else goto _L2
_L2:
        cursor.close();
        return arraylist;
_L6:
        if (cursor1.getInt(1) != 0) goto _L4; else goto _L7
_L7:
        Cursor cursor2;
        SQLiteDatabase sqlitedatabase1 = b;
        String as1[] = new String[1];
        as1[0] = (new StringBuilder()).append(l1).toString();
        cursor2 = sqlitedatabase1.rawQuery("select distinct(status) from rest_order_item where orderid=? ", as1);
        if (!cursor2.moveToFirst()) goto _L9; else goto _L8
_L8:
        if (cursor2.getInt(0) != 2) goto _L11; else goto _L10
_L10:
        table.setItemWait(true);
_L9:
        cursor2.close();
          goto _L4
_L11:
        if (cursor2.moveToNext()) goto _L8; else goto _L9
    }

    public final List a(String s)
    {
        String s1 = "";
        if (s != null)
        {
            s1 = (new StringBuilder(" where isOpen=")).append(s).toString();
        }
        ArrayList arraylist = new ArrayList();
        String s2 = (new StringBuilder("select rowid, name from rest_table")).append(s1).toString();
        Cursor cursor = b.rawQuery(s2, null);
        if (cursor.moveToFirst())
        {
            do
            {
                long l = cursor.getLong(0);
                Table table = new Table();
                table.setId(l);
                table.setName(cursor.getString(1));
                arraylist.add(table);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final void a()
    {
        b.delete("rest_table", null, null);
    }

    public final void a(long l)
    {
        b.delete("rest_table", (new StringBuilder("rowid=")).append(l).toString(), null);
    }

    public final void a(Table table)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("name", table.getName());
        contentvalues.put("sequence", Integer.valueOf(table.getSequence()));
        contentvalues.put("tableGroupId", Integer.valueOf(table.getTableGroupId()));
        b.insert("rest_table", null, contentvalues);
    }

    public final void a(List list)
    {
        b.beginTransaction();
        for (Iterator iterator = list.iterator(); iterator.hasNext(); a((Table)iterator.next())) { }
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
        for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); b.update("rest_table", contentvalues, (new StringBuilder("rowid=")).append((String)entry.getKey()).toString(), null))
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
        Cursor cursor = b.rawQuery("select rowid, name,tableGroupId  from rest_table order by sequence desc", null);
        if (cursor.moveToFirst())
        {
            do
            {
                long l = cursor.getLong(0);
                Table table = new Table();
                table.setId(l);
                table.setName(cursor.getString(1));
                table.setTableGroupId(cursor.getInt(2));
                arraylist.add(table);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final List b(long l)
    {
        ArrayList arraylist = new ArrayList();
        String s = (new StringBuilder("select rowid, name  from rest_table where rowId !=")).append(l).append(" order by sequence desc").toString();
        Cursor cursor = b.rawQuery(s, null);
        if (cursor.moveToFirst())
        {
            do
            {
                Order order = new Order();
                order.setTableId(cursor.getLong(0));
                order.setTableName(cursor.getString(1));
                SQLiteDatabase sqlitedatabase = b;
                String as[] = new String[1];
                as[0] = (new StringBuilder()).append(order.getTableId()).toString();
                Cursor cursor1 = sqlitedatabase.rawQuery("select rowid, orderNum, ordertime, personNum from rest_order where (status!=1 and status!=2 and status!=4)  and tableId =?", as);
                if (cursor1.moveToFirst())
                {
                    order.setId(cursor1.getLong(0));
                    order.setOrderNum(cursor1.getString(1));
                    order.setOrderTime(cursor1.getString(2));
                    order.setPersonNum(cursor1.getInt(3));
                }
                cursor1.close();
                arraylist.add(order);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final void b(Table table)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("name", table.getName());
        contentvalues.put("tableGroupId", Integer.valueOf(table.getTableGroupId()));
        b.update("rest_table", contentvalues, (new StringBuilder("rowid=")).append(table.getId()).toString(), null);
    }

}
