// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.b;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.aadhk.restpos.bean.Item;
import com.aadhk.restpos.f.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class i
{

    private final SQLiteDatabase a;

    public i(SQLiteDatabase sqlitedatabase)
    {
        a = sqlitedatabase;
    }

    public final List a(long l, boolean flag, double d1, double d2, 
            int j)
    {
        ArrayList arraylist = new ArrayList();
        SQLiteDatabase sqlitedatabase = a;
        String as[] = new String[1];
        as[0] = (new StringBuilder()).append(l).toString();
        Cursor cursor = sqlitedatabase.rawQuery(" select rowid as _id, name, price,background,fontColor, printerId, tax1Id, tax2Id, modifierGroupId, qty, isWarn, warnQty from rest_item where categoryid=? order by sequence desc", as);
        if (cursor.moveToFirst())
        {
            do
            {
                Item item = new Item();
                item.setId(cursor.getLong(0));
                item.setCategoryId(l);
                item.setName(cursor.getString(1));
                double d3 = cursor.getDouble(2);
                item.setPrinterId(cursor.getInt(5));
                int k = cursor.getInt(6);
                int i1 = cursor.getInt(7);
                if (flag)
                {
                    if (k == 1)
                    {
                        d3 = h.a(d3, 100D + d1, j, false);
                    }
                    if (i1 == 2)
                    {
                        d3 = h.a(d3, 100D + d2, j, false);
                    }
                }
                item.setPrice(d3);
                item.setBackground(cursor.getString(3));
                item.setFontColor(cursor.getString(4));
                item.setTax1Id(k);
                item.setTax2Id(i1);
                item.setModifierGroupIds(cursor.getString(8));
                item.setQty(cursor.getInt(9));
                boolean flag1;
                if (cursor.getInt(10) == 1)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                item.setWarn(flag1);
                item.setWarnQty(cursor.getInt(11));
                arraylist.add(item);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final void a(long l)
    {
        a.delete("rest_item", (new StringBuilder("rowid=")).append(l).toString(), null);
    }

    public final void a(long l, int j)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("printerId", Integer.valueOf(j));
        a.update("rest_item", contentvalues, (new StringBuilder("categoryid=")).append(l).toString(), null);
    }

    public final void a(long l, int j, int k)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("tax1Id", Integer.valueOf(j));
        contentvalues.put("tax2Id", Integer.valueOf(k));
        a.update("rest_item", contentvalues, (new StringBuilder("categoryid=")).append(l).toString(), null);
    }

    public final void a(long l, String s)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("modifierGroupId", s);
        a.update("rest_item", contentvalues, (new StringBuilder("categoryid=")).append(l).toString(), null);
    }

    public final void a(Item item)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("categoryid", Long.valueOf(item.getCategoryId()));
        contentvalues.put("name", item.getName());
        contentvalues.put("price", Double.valueOf(item.getPrice()));
        contentvalues.put("picture", item.getPicture());
        contentvalues.put("background", item.getBackground());
        contentvalues.put("fontColor", item.getFontColor());
        contentvalues.put("description", item.getDescription());
        contentvalues.put("printerId", Integer.valueOf(item.getPrinterId()));
        contentvalues.put("tax1Id", Integer.valueOf(item.getTax1Id()));
        contentvalues.put("tax2Id", Integer.valueOf(item.getTax2Id()));
        contentvalues.put("modifierGroupId", item.getModifierGroupIds());
        contentvalues.put("qty", Integer.valueOf(item.getQty()));
        contentvalues.put("isWarn", Boolean.valueOf(item.isWarn()));
        contentvalues.put("warnQty", Integer.valueOf(item.getWarnQty()));
        int j = 1;
        String s = (new StringBuilder("select max(sequence) from rest_item where categoryId=")).append(item.getCategoryId()).toString();
        Cursor cursor = a.rawQuery(s, null);
        if (cursor.moveToFirst())
        {
            j = 1 + cursor.getInt(0);
        }
        cursor.close();
        contentvalues.put("sequence", Integer.valueOf(j));
        a.insert("rest_item", null, contentvalues);
    }

    public final void a(List list)
    {
        a.beginTransaction();
        for (Iterator iterator = list.iterator(); iterator.hasNext(); a((Item)iterator.next())) { }
        break MISSING_BLOCK_LABEL_49;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
    }

    public final void a(Map map)
    {
        a.beginTransaction();
        Long long1;
        for (Iterator iterator = map.keySet().iterator(); iterator.hasNext(); a.execSQL((new StringBuilder("UPDATE rest_item SET qty= ( MAX(0, qty-")).append(map.get(long1)).append(")) WHERE rowid=").append(long1).toString()))
        {
            long1 = (Long)iterator.next();
        }

        break MISSING_BLOCK_LABEL_94;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
    }

    public final boolean a()
    {
        Cursor cursor = a.query(false, "rest_item", new String[] {
            "tax1Id"
        }, "tax1Id=1", null, null, null, null, null);
        int j = cursor.getCount();
        boolean flag = false;
        if (j != 0)
        {
            flag = true;
        }
        cursor.close();
        return flag;
    }

    public final void b(long l)
    {
        a.delete("rest_item", (new StringBuilder("categoryId=")).append(l).toString(), null);
    }

    public final void b(Item item)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("categoryid", Long.valueOf(item.getCategoryId()));
        contentvalues.put("name", item.getName());
        contentvalues.put("price", Double.valueOf(item.getPrice()));
        contentvalues.put("picture", item.getPicture());
        contentvalues.put("background", item.getBackground());
        contentvalues.put("fontColor", item.getFontColor());
        contentvalues.put("description", item.getDescription());
        contentvalues.put("printerId", Integer.valueOf(item.getPrinterId()));
        contentvalues.put("tax1Id", Integer.valueOf(item.getTax1Id()));
        contentvalues.put("tax2Id", Integer.valueOf(item.getTax2Id()));
        contentvalues.put("modifierGroupId", item.getModifierGroupIds());
        contentvalues.put("sequence", Integer.valueOf(item.getSequence()));
        contentvalues.put("qty", Integer.valueOf(item.getQty()));
        contentvalues.put("isWarn", Boolean.valueOf(item.isWarn()));
        contentvalues.put("warnQty", Integer.valueOf(item.getWarnQty()));
        a.update("rest_item", contentvalues, (new StringBuilder("rowid=")).append(item.getId()).toString(), null);
    }

    public final void b(List list)
    {
        a.beginTransaction();
        ContentValues contentvalues = new ContentValues();
        Item item;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); a.update("rest_item", contentvalues, (new StringBuilder("rowid=")).append(item.getId()).toString(), null))
        {
            item = (Item)iterator.next();
            contentvalues.clear();
            contentvalues.put("sequence", Integer.valueOf(item.getSequence()));
        }

        break MISSING_BLOCK_LABEL_109;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
    }

    public final boolean b()
    {
        Cursor cursor = a.query(false, "rest_item", new String[] {
            "tax2Id"
        }, "tax2Id=2", null, null, null, null, null);
        int j = cursor.getCount();
        boolean flag = false;
        if (j != 0)
        {
            flag = true;
        }
        cursor.close();
        return flag;
    }

    public final List c(long l)
    {
        ArrayList arraylist = new ArrayList();
        SQLiteDatabase sqlitedatabase = a;
        String as[] = new String[1];
        as[0] = (new StringBuilder()).append(l).toString();
        Cursor cursor = sqlitedatabase.rawQuery(" select rowid as _id, name as name, price,background,fontColor, printerId, tax1Id, tax2Id, sequence, modifierGroupId, qty, isWarn, warnQty from rest_item  where categoryid=? order by sequence desc", as);
        if (cursor.moveToFirst())
        {
            do
            {
                Item item = new Item();
                item.setId(cursor.getLong(0));
                item.setCategoryId(l);
                item.setName(cursor.getString(1));
                item.setPrice(cursor.getDouble(2));
                item.setBackground(cursor.getString(3));
                item.setFontColor(cursor.getString(4));
                item.setPrinterId(cursor.getInt(5));
                item.setTax1Id(cursor.getInt(6));
                item.setTax2Id(cursor.getInt(7));
                item.setSequence(cursor.getInt(8));
                item.setModifierGroupIds(cursor.getString(9));
                item.setQty(cursor.getInt(10));
                boolean flag;
                if (cursor.getInt(11) == 1)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                item.setWarn(flag);
                item.setWarnQty(cursor.getInt(12));
                arraylist.add(item);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final Item d(long l)
    {
        boolean flag = true;
        SQLiteDatabase sqlitedatabase = a;
        String as[] = new String[flag];
        as[0] = (new StringBuilder()).append(l).toString();
        Cursor cursor = sqlitedatabase.rawQuery(" select rowid as _id, name as name, price,background,fontColor, printerId, tax1Id, tax2Id, sequence, modifierGroupId, qty, isWarn, warnQty from rest_item  where rowid=?", as);
        Item item = new Item();
        if (cursor.moveToFirst())
        {
            item.setId(cursor.getLong(0));
            item.setCategoryId(l);
            item.setName(cursor.getString(flag));
            item.setPrice(cursor.getDouble(2));
            item.setBackground(cursor.getString(3));
            item.setFontColor(cursor.getString(4));
            item.setPrinterId(cursor.getInt(5));
            item.setTax1Id(cursor.getInt(6));
            item.setTax2Id(cursor.getInt(7));
            item.setSequence(cursor.getInt(8));
            item.setModifierGroupIds(cursor.getString(9));
            item.setQty(cursor.getInt(10));
            if (cursor.getInt(11) != flag)
            {
                flag = false;
            }
            item.setWarn(flag);
            item.setWarnQty(cursor.getInt(12));
        }
        cursor.close();
        return item;
    }
}
