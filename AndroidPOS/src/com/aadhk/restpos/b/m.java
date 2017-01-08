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

public final class m
{

    private final SQLiteDatabase a;

    public m(SQLiteDatabase sqlitedatabase)
    {
        a = sqlitedatabase;
    }

    public final List a()
    {
        ArrayList arraylist = new ArrayList();
        String as[] = {
            "rowid as _id", "name", "miniQty"
        };
        Cursor cursor = a.query(false, "rest_modifier_group", as, null, null, null, null, "name asc ", null);
        if (cursor.moveToFirst())
        {
            do
            {
                ModifierGroup modifiergroup = new ModifierGroup();
                modifiergroup.setId(cursor.getLong(0));
                modifiergroup.setName(cursor.getString(1));
                modifiergroup.setMiniQty(cursor.getInt(2));
                ArrayList arraylist1 = new ArrayList();
                Cursor cursor1 = a.query(false, "rest_modifier", new String[] {
                    "rowid as _id", "groupId", "name", "price", "cost", "type", "qty", "required"
                }, (new StringBuilder("groupId=")).append(modifiergroup.getId()).toString(), null, null, null, null, null);
                if (cursor1.moveToFirst())
                {
                    do
                    {
                        Modifier modifier = new Modifier();
                        modifier.setId(cursor1.getInt(0));
                        modifier.setGroupId(cursor1.getInt(1));
                        modifier.setName(cursor1.getString(2));
                        modifier.setPrice(cursor1.getDouble(3));
                        modifier.setCost(cursor1.getDouble(4));
                        modifier.setType(cursor1.getInt(5));
                        modifier.setQty(cursor1.getInt(6));
                        boolean flag;
                        if (cursor1.getInt(1) == 1)
                        {
                            flag = true;
                        } else
                        {
                            flag = false;
                        }
                        modifier.setRequired(flag);
                        arraylist1.add(modifier);
                    } while (cursor1.moveToNext());
                }
                cursor1.close();
                modifiergroup.setModifiers(arraylist1);
                arraylist.add(modifiergroup);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final void a(long l)
    {
        a.beginTransaction();
        a.delete("rest_modifier_group", (new StringBuilder("rowid=")).append(l).toString(), null);
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
        long l = a.replace("rest_modifier_group", null, contentvalues);
        a.delete("rest_modifier", (new StringBuilder("groupId=")).append(modifiergroup.getId()).toString(), null);
        for (Iterator iterator = list.iterator(); iterator.hasNext(); a.insert("rest_modifier", null, contentvalues))
        {
            Modifier modifier = (Modifier)iterator.next();
            contentvalues.clear();
            contentvalues.put("groupId", Long.valueOf(l));
            contentvalues.put("name", modifier.getName());
            contentvalues.put("price", Double.valueOf(modifier.getPrice()));
            contentvalues.put("cost", Double.valueOf(modifier.getCost()));
            contentvalues.put("type", Integer.valueOf(modifier.getType()));
            contentvalues.put("qty", Integer.valueOf(modifier.getQty()));
            contentvalues.put("required", Boolean.valueOf(modifier.isRequired()));
        }

        break MISSING_BLOCK_LABEL_254;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
    }

    public final Map b()
    {
        LinkedHashMap linkedhashmap = new LinkedHashMap();
        Cursor cursor = a.query(false, "rest_modifier_group", new String[] {
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
