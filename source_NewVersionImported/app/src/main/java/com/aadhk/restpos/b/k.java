// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.b;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.aadhk.restpos.bean.Modifier;
import com.aadhk.restpos.bean.ModifierGroup;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class k
{

    private final SQLiteDatabase a;

    public k(SQLiteDatabase sqlitedatabase)
    {
        a = sqlitedatabase;
    }

    public final List a()
    {
        ArrayList arraylist = new ArrayList();
        String as[] = {
            "rowid as _id", "name", "miniNum"
        };
        Cursor cursor = a.query(false, "rest_modifierGroup", as, null, null, null, null, "name asc ", null);
        if (cursor.moveToFirst())
        {
            do
            {
                ModifierGroup modifiergroup = new ModifierGroup();
                modifiergroup.setId(cursor.getLong(0));
                modifiergroup.setName(cursor.getString(1));
                modifiergroup.setMiniNum(cursor.getInt(2));
                arraylist.add(modifiergroup);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final void a(long l)
    {
        a.beginTransaction();
        a.delete("rest_modifierGroup", (new StringBuilder("rowid=")).append(l).toString(), null);
        a.delete("rest_modifier", (new StringBuilder("groupId=")).append(l).toString(), null);
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
    }

    public final void a(ModifierGroup modifiergroup, List list)
    {
        a.beginTransaction();
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("name", modifiergroup.getName());
        if (modifiergroup.getId() > 0L)
        {
            contentvalues.put("rowid", Long.valueOf(modifiergroup.getId()));
        }
        long l = a.replace("rest_modifierGroup", null, contentvalues);
        a.delete("rest_modifier", (new StringBuilder("groupId=")).append(modifiergroup.getId()).toString(), null);
        for (Iterator iterator = list.iterator(); iterator.hasNext(); a.insert("rest_modifier", null, contentvalues))
        {
            Modifier modifier = (Modifier)iterator.next();
            contentvalues.clear();
            contentvalues.put("groupId", Long.valueOf(l));
            contentvalues.put("name", modifier.getName());
            contentvalues.put("price", Double.valueOf(modifier.getPrice()));
            contentvalues.put("type", Integer.valueOf(modifier.getType()));
            contentvalues.put("qty", Integer.valueOf(modifier.getQty()));
            contentvalues.put("required", Boolean.valueOf(modifier.isRequired()));
        }

        break MISSING_BLOCK_LABEL_239;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
        a.setTransactionSuccessful();
        a.endTransaction();
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
            s1 = (new StringBuilder("  b.groupId=c.rowid and  a.supplementid=b.rowid and d.rowid=a.orderid and d.status=0 and ")).append(s).toString();
        } else
        {
            s1 = "  b.groupId=c.rowid and  a.supplementid=b.rowid and d.rowid=a.orderid and d.status=0";
        }
        cursor = a.query(false, "rest_orderSupplement a, rest_modifier b,  rest_modifierGroup c, rest_order d ", as, s1, null, null, null, null, null);
        i = cursor.getCount();
        flag = false;
        if (i != 0)
        {
            flag = true;
        }
        cursor.close();
        return flag;
    }

    public final Map b()
    {
        LinkedHashMap linkedhashmap = new LinkedHashMap();
        Cursor cursor = a.query(false, "rest_modifierGroup", new String[] {
            "rowid", "name"
        }, null, null, null, null, null, null);
        if (cursor.moveToFirst())
        {
            do
            {
                linkedhashmap.put(cursor.getString(0), cursor.getString(1));
            } while (cursor.moveToNext());
        }
        cursor.close();
        return linkedhashmap;
    }
}
