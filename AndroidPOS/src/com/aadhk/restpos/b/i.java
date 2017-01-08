// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.b;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.aadhk.restpos.bean.Item;
import com.aadhk.restpos.util.m;
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

    public final List a(long l, boolean flag, double d, double d1, 
            double d2, int j)
    {
        ArrayList arraylist = new ArrayList();
        SQLiteDatabase sqlitedatabase = a;
        String as[] = new String[1];
        as[0] = (new StringBuilder()).append(l).toString();
        Cursor cursor = sqlitedatabase.rawQuery(" select rowid as _id, name, price,cost,background,fontColor, printerId, tax1Id, tax2Id, tax3Id, modifierGroupId, kitchenNoteGroupId, isWarn, warnQty,askPrice,stopSaleZeroQty from rest_item where categoryid=? order by sequence desc", as);
        if (cursor.moveToFirst())
        {
            do
            {
                Item item = new Item();
                item.setId(cursor.getLong(0));
                item.setCategoryId(l);
                item.setName(cursor.getString(1));
                double d3 = cursor.getDouble(2);
                item.setPrinterId(cursor.getInt(6));
                int k = cursor.getInt(7);
                int i1 = cursor.getInt(8);
                int j1 = cursor.getInt(9);
                if (flag)
                {
                    if (k == 1)
                    {
                        d3 = m.a(d3, 100D + d, j, false);
                    }
                    if (i1 == 2)
                    {
                        d3 = m.a(d3, 100D + d1, j, false);
                    }
                    if (j1 == 3)
                    {
                        d3 = m.a(d3, 100D + d2, j, false);
                    }
                }
                item.setPrice(d3);
                item.setCost(cursor.getDouble(3));
                item.setBackground(cursor.getString(4));
                item.setFontColor(cursor.getString(5));
                item.setTax1Id(k);
                item.setTax2Id(i1);
                item.setTax3Id(j1);
                item.setModifierGroupIds(cursor.getString(10));
                item.setKitchenNoteGroupIds(cursor.getString(11));
                boolean flag1;
                boolean flag2;
                boolean flag3;
                SQLiteDatabase sqlitedatabase1;
                String as1[];
                Cursor cursor1;
                if (cursor.getInt(12) == 1)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                item.setWarn(flag1);
                item.setWarnQty(cursor.getInt(13));
                if (cursor.getInt(14) == 1)
                {
                    flag2 = true;
                } else
                {
                    flag2 = false;
                }
                item.setAskPrice(flag2);
                if (cursor.getInt(15) == 1)
                {
                    flag3 = true;
                } else
                {
                    flag3 = false;
                }
                item.setStopSaleZeroQty(flag3);
                sqlitedatabase1 = a;
                as1 = new String[1];
                as1[0] = (new StringBuilder()).append(item.getId()).toString();
                cursor1 = sqlitedatabase1.rawQuery(" select qty from rest_item_qty where itemId=?", as1);
                if (cursor1.moveToFirst())
                {
                    item.setQty(cursor1.getInt(0));
                }
                cursor1.close();
                arraylist.add(item);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final void a(long l)
    {
        a.delete("rest_item", (new StringBuilder("rowid=")).append(l).toString(), null);
        a.delete("rest_item_qty", (new StringBuilder("itemid=")).append(l).toString(), null);
    }

    public final void a(long l, int j)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("printerId", Integer.valueOf(j));
        a.update("rest_item", contentvalues, (new StringBuilder("categoryid=")).append(l).toString(), null);
    }

    public final void a(long l, int j, int k, int i1)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("tax1Id", Integer.valueOf(j));
        contentvalues.put("tax2Id", Integer.valueOf(k));
        contentvalues.put("tax3Id", Integer.valueOf(i1));
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
        a.beginTransaction();
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("categoryid", Long.valueOf(item.getCategoryId()));
        contentvalues.put("name", item.getName());
        contentvalues.put("price", Double.valueOf(item.getPrice()));
        contentvalues.put("cost", Double.valueOf(item.getCost()));
        contentvalues.put("picture", item.getPicture());
        contentvalues.put("background", item.getBackground());
        contentvalues.put("fontColor", item.getFontColor());
        contentvalues.put("description", item.getDescription());
        contentvalues.put("printerId", Integer.valueOf(item.getPrinterId()));
        contentvalues.put("tax1Id", Integer.valueOf(item.getTax1Id()));
        contentvalues.put("tax2Id", Integer.valueOf(item.getTax2Id()));
        contentvalues.put("tax3Id", Integer.valueOf(item.getTax3Id()));
        contentvalues.put("modifierGroupId", item.getModifierGroupIds());
        contentvalues.put("kitchenNoteGroupId", item.getKitchenNoteGroupIds());
        contentvalues.put("isWarn", Boolean.valueOf(item.isWarn()));
        contentvalues.put("warnQty", Integer.valueOf(item.getWarnQty()));
        contentvalues.put("askPrice", Boolean.valueOf(item.isAskPrice()));
        contentvalues.put("stopSaleZeroQty", Boolean.valueOf(item.isStopSaleZeroQty()));
        contentvalues.put("sequence", Integer.valueOf(item.getSequence()));
        long l = a.insert("rest_item", null, contentvalues);
        ContentValues contentvalues1 = new ContentValues();
        contentvalues1.put("itemId", Long.valueOf(l));
        contentvalues1.put("qty", Integer.valueOf(item.getQty()));
        a.insert("rest_item_qty", null, contentvalues1);
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
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
        ContentValues contentvalues = new ContentValues();
        java.util.Map.Entry entry;
        for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); a.update("rest_item", contentvalues, (new StringBuilder("rowid=")).append((String)entry.getKey()).toString(), null))
        {
            entry = (java.util.Map.Entry)iterator.next();
            contentvalues.clear();
            contentvalues.put("sequence", (Integer)entry.getValue());
        }

        break MISSING_BLOCK_LABEL_121;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
    }

    public final boolean a(int j)
    {
        String s = (new StringBuilder("tax1Id=")).append(j).toString();
        if (j == 2)
        {
            s = (new StringBuilder("tax2Id=")).append(j).toString();
        }
        if (j == 3)
        {
            s = (new StringBuilder("tax3Id=")).append(j).toString();
        }
        Cursor cursor = a.query(false, "rest_item", new String[] {
            "name"
        }, s, null, null, null, null, null);
        int k = cursor.getCount();
        boolean flag = false;
        if (k != 0)
        {
            flag = true;
        }
        cursor.close();
        return flag;
    }

    public final void b(long l)
    {
        a.beginTransaction();
        String s = (new StringBuilder("select rowid from rest_item where categoryId=")).append(l).toString();
        Cursor cursor = a.rawQuery(s, null);
        if (cursor.moveToFirst())
        {
            do
            {
                a.delete("rest_item_qty", (new StringBuilder("itemid=")).append(cursor.getLong(0)).toString(), null);
            } while (cursor.moveToNext());
        }
        cursor.close();
        a.delete("rest_item", (new StringBuilder("categoryId=")).append(l).toString(), null);
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
    }

    public final void b(long l, String s)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("kitchenNoteGroupId", s);
        a.update("rest_item", contentvalues, (new StringBuilder("categoryid=")).append(l).toString(), null);
    }

    public final void b(Item item)
    {
        a.beginTransaction();
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("categoryid", Long.valueOf(item.getCategoryId()));
        contentvalues.put("name", item.getName());
        contentvalues.put("price", Double.valueOf(item.getPrice()));
        contentvalues.put("cost", Double.valueOf(item.getCost()));
        contentvalues.put("picture", item.getPicture());
        contentvalues.put("background", item.getBackground());
        contentvalues.put("fontColor", item.getFontColor());
        contentvalues.put("description", item.getDescription());
        contentvalues.put("printerId", Integer.valueOf(item.getPrinterId()));
        contentvalues.put("tax1Id", Integer.valueOf(item.getTax1Id()));
        contentvalues.put("tax2Id", Integer.valueOf(item.getTax2Id()));
        contentvalues.put("tax3Id", Integer.valueOf(item.getTax3Id()));
        contentvalues.put("modifierGroupId", item.getModifierGroupIds());
        contentvalues.put("kitchenNoteGroupId", item.getKitchenNoteGroupIds());
        contentvalues.put("sequence", Integer.valueOf(item.getSequence()));
        contentvalues.put("isWarn", Boolean.valueOf(item.isWarn()));
        contentvalues.put("warnQty", Integer.valueOf(item.getWarnQty()));
        contentvalues.put("askPrice", Boolean.valueOf(item.isAskPrice()));
        contentvalues.put("stopSaleZeroQty", Boolean.valueOf(item.isStopSaleZeroQty()));
        a.update("rest_item", contentvalues, (new StringBuilder("rowid=")).append(item.getId()).toString(), null);
        ContentValues contentvalues1 = new ContentValues();
        contentvalues1.put("qty", Integer.valueOf(item.getQty()));
        a.update("rest_item_qty", contentvalues1, (new StringBuilder("itemId=")).append(item.getId()).toString(), null);
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
    }

    public final List c(long l)
    {
        ArrayList arraylist = new ArrayList();
        SQLiteDatabase sqlitedatabase = a;
        String as[] = new String[1];
        as[0] = (new StringBuilder()).append(l).toString();
        Cursor cursor = sqlitedatabase.rawQuery(" select rowid as _id, name as name, price,cost,background,fontColor, printerId, tax1Id, tax2Id,tax3Id, sequence, modifierGroupId, kitchenNoteGroupId, isWarn, warnQty,askPrice,stopSaleZeroQty from rest_item  where categoryid=? order by sequence desc", as);
        if (cursor.moveToFirst())
        {
            do
            {
                Item item = new Item();
                item.setId(cursor.getLong(0));
                item.setCategoryId(l);
                item.setName(cursor.getString(1));
                item.setPrice(cursor.getDouble(2));
                item.setCost(cursor.getDouble(3));
                item.setBackground(cursor.getString(4));
                item.setFontColor(cursor.getString(5));
                item.setPrinterId(cursor.getInt(6));
                item.setTax1Id(cursor.getInt(7));
                item.setTax2Id(cursor.getInt(8));
                item.setTax3Id(cursor.getInt(9));
                item.setSequence(cursor.getInt(10));
                item.setModifierGroupIds(cursor.getString(11));
                item.setKitchenNoteGroupIds(cursor.getString(12));
                boolean flag;
                boolean flag1;
                boolean flag2;
                SQLiteDatabase sqlitedatabase1;
                String as1[];
                Cursor cursor1;
                if (cursor.getInt(13) == 1)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                item.setWarn(flag);
                item.setWarnQty(cursor.getInt(14));
                if (cursor.getInt(15) == 1)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                item.setAskPrice(flag1);
                if (cursor.getInt(16) == 1)
                {
                    flag2 = true;
                } else
                {
                    flag2 = false;
                }
                item.setStopSaleZeroQty(flag2);
                sqlitedatabase1 = a;
                as1 = new String[1];
                as1[0] = (new StringBuilder()).append(item.getId()).toString();
                cursor1 = sqlitedatabase1.rawQuery(" select qty from rest_item_qty where itemId=?", as1);
                if (cursor1.moveToFirst())
                {
                    item.setQty(cursor1.getInt(0));
                }
                cursor1.close();
                arraylist.add(item);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }
}
