// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.b;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.aadhk.restpos.bean.KitchenNote;
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
        Cursor cursor = a.query(false, "rest_kitchen_note_group", new String[] {
            "rowid as _id", "name"
        }, null, null, null, null, null, null);
        if (cursor.moveToFirst())
        {
            do
            {
                KitchenNote kitchennote = new KitchenNote();
                kitchennote.setId(cursor.getInt(0));
                kitchennote.setName(cursor.getString(1));
                ArrayList arraylist1 = new ArrayList();
                Cursor cursor1 = a.query(false, "rest_kitchen_note", new String[] {
                    "rowid as _id", "groupId", "name"
                }, (new StringBuilder("groupId=")).append(kitchennote.getId()).toString(), null, null, null, null, null);
                if (cursor1.moveToFirst())
                {
                    do
                    {
                        KitchenNote kitchennote1 = new KitchenNote();
                        kitchennote1.setId(cursor1.getInt(0));
                        kitchennote1.setGroupId(cursor1.getInt(1));
                        kitchennote1.setName(cursor1.getString(2));
                        arraylist1.add(kitchennote1);
                    } while (cursor1.moveToNext());
                }
                cursor1.close();
                kitchennote.setListNote(arraylist1);
                arraylist.add(kitchennote);
            } while (cursor.moveToNext());
            cursor.close();
        }
        return arraylist;
    }

    public final void a(int i)
    {
        a.delete("rest_kitchen_note_group", (new StringBuilder("rowid=")).append(i).toString(), null);
        a.delete("rest_kitchen_note", (new StringBuilder("groupId=")).append(i).toString(), null);
    }

    public final void a(KitchenNote kitchennote)
    {
        a.beginTransaction();
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("name", kitchennote.getName());
        long l = a.insert("rest_kitchen_note_group", null, contentvalues);
        ContentValues contentvalues1;
        for (Iterator iterator = kitchennote.getListNote().iterator(); iterator.hasNext(); a.insert("rest_kitchen_note", null, contentvalues1))
        {
            KitchenNote kitchennote1 = (KitchenNote)iterator.next();
            contentvalues1 = new ContentValues();
            contentvalues1.put("groupId", Long.valueOf(l));
            contentvalues1.put("name", kitchennote1.getName());
        }

        break MISSING_BLOCK_LABEL_130;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
    }

    public final List b(int i)
    {
        ArrayList arraylist = new ArrayList();
        Cursor cursor = a.query(false, "rest_kitchen_note", new String[] {
            "name"
        }, (new StringBuilder("groupId=")).append(i).toString(), null, null, null, null, null);
        if (cursor.moveToFirst())
        {
            do
            {
                arraylist.add(cursor.getString(0));
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final Map b()
    {
        LinkedHashMap linkedhashmap = new LinkedHashMap();
        Cursor cursor = a.query(false, "rest_kitchen_note_group", new String[] {
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

    public final void b(KitchenNote kitchennote)
    {
        a.beginTransaction();
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("name", kitchennote.getName());
        a.update("rest_kitchen_note_group", contentvalues, (new StringBuilder("rowid=")).append(kitchennote.getId()).toString(), null);
        a.delete("rest_kitchen_note", (new StringBuilder("groupId=")).append(kitchennote.getId()).toString(), null);
        ContentValues contentvalues1;
        for (Iterator iterator = kitchennote.getListNote().iterator(); iterator.hasNext(); a.insert("rest_kitchen_note", null, contentvalues1))
        {
            KitchenNote kitchennote1 = (KitchenNote)iterator.next();
            contentvalues1 = new ContentValues();
            contentvalues1.put("groupId", Integer.valueOf(kitchennote.getId()));
            contentvalues1.put("name", kitchennote1.getName());
        }

        break MISSING_BLOCK_LABEL_180;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
    }
}
