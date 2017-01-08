// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.b;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.OrderModifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class p
{

    private final SQLiteDatabase a;

    public p(SQLiteDatabase sqlitedatabase)
    {
        a = sqlitedatabase;
    }

    private List a(long l, String s)
    {
        ArrayList arraylist = new ArrayList();
        String s1 = "select a.rowid, categoryName, itemName, itemId, a.price, a.cost, a.qty, remark, cancelReason, status, printerId, ordertime, tax1Id, tax2Id, tax3Id,discountAmt, discountName, billId from rest_order_item as a left join rest_item as b on a.itemId=b.rowid  where orderid=? ";
        if (s != null)
        {
            s1 = (new StringBuilder()).append(s1).append(s).toString();
        }
        SQLiteDatabase sqlitedatabase = a;
        String as[] = new String[1];
        as[0] = (new StringBuilder()).append(l).toString();
        Cursor cursor = sqlitedatabase.rawQuery(s1, as);
        if (cursor.moveToFirst())
        {
            do
            {
                OrderItem orderitem = new OrderItem();
                orderitem.setId(cursor.getLong(0));
                orderitem.setCategoryName(cursor.getString(1));
                orderitem.setItemName(cursor.getString(2));
                orderitem.setItemId(cursor.getLong(3));
                orderitem.setItemPrice(cursor.getDouble(4));
                orderitem.setItemCost(cursor.getDouble(5));
                orderitem.setQty(cursor.getInt(6));
                orderitem.setRemark(cursor.getString(7));
                orderitem.setCancelReason(cursor.getString(8));
                orderitem.setStatus(cursor.getInt(9));
                orderitem.setPrinterId(cursor.getInt(10));
                orderitem.setStartTime(cursor.getString(11));
                orderitem.setTax1Id(cursor.getInt(12));
                orderitem.setTax2Id(cursor.getInt(13));
                orderitem.setTax3Id(cursor.getInt(14));
                orderitem.setDiscountAmt(cursor.getDouble(15));
                orderitem.setDiscountName(cursor.getString(16));
                orderitem.setBillId(cursor.getLong(17));
                orderitem.setOrderId(l);
                ArrayList arraylist1 = new ArrayList();
                SQLiteDatabase sqlitedatabase1 = a;
                String as1[] = new String[2];
                as1[0] = (new StringBuilder()).append(l).toString();
                as1[1] = (new StringBuilder()).append(orderitem.getId()).toString();
                Cursor cursor1 = sqlitedatabase1.rawQuery("select rowid, orderid, itemId, orderItemId, qty,  modifierName, type, price,cost from rest_order_modifier where orderid=? and orderItemId=? order by type asc, modifierName asc", as1);
                if (cursor1.moveToFirst())
                {
                    do
                    {
                        OrderModifier ordermodifier = new OrderModifier();
                        ordermodifier.setId(cursor1.getLong(0));
                        ordermodifier.setOrderid(cursor1.getLong(1));
                        ordermodifier.setItemid(cursor1.getLong(2));
                        ordermodifier.setOrderItemId(cursor1.getLong(3));
                        ordermodifier.setQty(cursor1.getInt(4));
                        ordermodifier.setModifierName(cursor1.getString(5));
                        ordermodifier.setType(cursor1.getInt(6));
                        ordermodifier.setModifierPrice(cursor1.getDouble(7));
                        ordermodifier.setModifierCost(cursor1.getDouble(8));
                        arraylist1.add(ordermodifier);
                    } while (cursor1.moveToNext());
                }
                cursor1.close();
                orderitem.setOrderModifiers(arraylist1);
                arraylist.add(orderitem);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final List a(long l)
    {
        return a(l, "order by orderTime asc, a.rowid");
    }

    public final void a(long l, long l1)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("orderid", Long.valueOf(l));
        a.update("rest_order_item", contentvalues, (new StringBuilder("rowid=")).append(l1).toString(), null);
    }

    public final void a(Order order, List list)
    {
        Iterator iterator;
        a.beginTransaction();
        iterator = list.iterator();
_L1:
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_504;
        }
        OrderItem orderitem = (OrderItem)iterator.next();
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("orderId", Long.valueOf(order.getId()));
        contentvalues.put("categoryName", orderitem.getCategoryName());
        contentvalues.put("itemId", Long.valueOf(orderitem.getItemId()));
        contentvalues.put("itemName", orderitem.getItemName());
        contentvalues.put("qty", Integer.valueOf(orderitem.getQty()));
        contentvalues.put("price", Double.valueOf(orderitem.getItemPrice()));
        contentvalues.put("cost", Double.valueOf(orderitem.getItemCost()));
        contentvalues.put("remark", orderitem.getRemark());
        contentvalues.put("ordertime", orderitem.getStartTime());
        contentvalues.put("status", Integer.valueOf(orderitem.getStatus()));
        contentvalues.put("discountAmt", Double.valueOf(orderitem.getDiscountAmt()));
        contentvalues.put("discountName", orderitem.getDiscountName());
        long l = a.insert("rest_order_item", null, contentvalues);
        a.execSQL((new StringBuilder("UPDATE rest_item_qty SET qty= ( MAX(0, qty-")).append(orderitem.getQty()).append(")) WHERE itemId=").append(orderitem.getItemId()).toString());
        ContentValues contentvalues1;
        for (Iterator iterator1 = orderitem.getOrderModifiers().iterator(); iterator1.hasNext(); a.insert("rest_order_modifier", null, contentvalues1))
        {
            OrderModifier ordermodifier = (OrderModifier)iterator1.next();
            contentvalues1 = new ContentValues();
            contentvalues1.put("orderId", Long.valueOf(order.getId()));
            contentvalues1.put("itemId", Long.valueOf(orderitem.getItemId()));
            contentvalues1.put("orderItemId", Long.valueOf(l));
            contentvalues1.put("qty", Integer.valueOf(ordermodifier.getQty()));
            contentvalues1.put("modifierName", ordermodifier.getModifierName());
            contentvalues1.put("type", Integer.valueOf(ordermodifier.getType()));
            contentvalues1.put("price", Double.valueOf(ordermodifier.getModifierPrice()));
            contentvalues1.put("cost", Double.valueOf(ordermodifier.getModifierCost()));
        }

        break MISSING_BLOCK_LABEL_461;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
        a.execSQL((new StringBuilder("UPDATE rest_order SET orderCount=")).append(order.getOrderCount()).append(" WHERE rowid=").append(order.getId()).toString());
          goto _L1
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
    }

    public final void a(OrderItem orderitem)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("cancelReason", orderitem.getCancelReason());
        contentvalues.put("status", Integer.valueOf(orderitem.getStatus()));
        contentvalues.put("endTime", orderitem.getEndTime());
        a.update("rest_order_item", contentvalues, (new StringBuilder("rowid=")).append(orderitem.getId()).toString(), null);
    }

    public final boolean a(long l, boolean flag)
    {
        String as[] = {
            "a.rowid"
        };
        String s;
        Cursor cursor;
        int i;
        boolean flag1;
        if (flag)
        {
            if (l > 0L)
            {
                s = (new StringBuilder("  b.categoryid=c.rowid and  a.itemid=b.rowid and d.rowid=a.orderid and d.status=0 and b.rowid=")).append(l).toString();
            } else
            {
                s = "  b.categoryid=c.rowid and  a.itemid=b.rowid and d.rowid=a.orderid and d.status=0";
            }
        } else
        if (l > 0L)
        {
            s = (new StringBuilder("  b.categoryid=c.rowid and  a.itemid=b.rowid and d.rowid=a.orderid and d.status=0 and b.categoryId=")).append(l).toString();
        } else
        {
            s = "  b.categoryid=c.rowid and  a.itemid=b.rowid and d.rowid=a.orderid and d.status=0";
        }
        cursor = a.query(false, "rest_order_item a, rest_item b,  rest_category c, rest_order d ", as, s, null, null, null, null, null);
        i = cursor.getCount();
        flag1 = false;
        if (i <= 0)
        {
            flag1 = true;
        }
        cursor.close();
        return flag1;
    }

    public final List b(long l)
    {
        return a(l, "order by status asc, itemName");
    }

    public final List b(long l, long l1)
    {
        ArrayList arraylist = new ArrayList();
        SQLiteDatabase sqlitedatabase = a;
        String as[] = new String[2];
        as[0] = (new StringBuilder()).append(l).toString();
        as[1] = (new StringBuilder()).append(l1).toString();
        Cursor cursor = sqlitedatabase.rawQuery("select a.rowid, a.billId, a.itemName, a.price, a.cost, a.qty, tax1Id, tax2Id,tax3Id from rest_order_item as a left join rest_item as b on a.itemId=b.rowid  where orderid=? and (billId=? or billId=0) and status!=1 order by a.itemName asc", as);
        if (cursor.moveToFirst())
        {
            do
            {
                OrderItem orderitem = new OrderItem();
                orderitem.setId(cursor.getLong(0));
                boolean flag;
                ArrayList arraylist1;
                SQLiteDatabase sqlitedatabase1;
                String as1[];
                Cursor cursor1;
                if (cursor.getLong(1) > 0L)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                orderitem.setSelected(flag);
                orderitem.setItemName(cursor.getString(2));
                orderitem.setItemPrice(cursor.getDouble(3));
                orderitem.setItemCost(cursor.getDouble(4));
                orderitem.setQty(cursor.getInt(5));
                orderitem.setTax1Id(cursor.getInt(6));
                orderitem.setTax2Id(cursor.getInt(7));
                orderitem.setTax3Id(cursor.getInt(8));
                orderitem.setOrderId(l);
                arraylist1 = new ArrayList();
                sqlitedatabase1 = a;
                as1 = new String[2];
                as1[0] = (new StringBuilder()).append(l).toString();
                as1[1] = (new StringBuilder()).append(orderitem.getId()).toString();
                cursor1 = sqlitedatabase1.rawQuery("select rowid, orderid, itemId, orderItemId, qty,  modifierName, type, price,cost from rest_order_modifier where orderid=? and orderItemId=? order by type asc, modifierName asc", as1);
                if (cursor1.moveToFirst())
                {
                    do
                    {
                        OrderModifier ordermodifier = new OrderModifier();
                        ordermodifier.setId(cursor1.getLong(0));
                        ordermodifier.setOrderid(cursor1.getLong(1));
                        ordermodifier.setItemid(cursor1.getLong(2));
                        ordermodifier.setOrderItemId(cursor1.getLong(3));
                        ordermodifier.setQty(cursor1.getInt(4));
                        ordermodifier.setModifierName(cursor1.getString(5));
                        ordermodifier.setType(cursor1.getInt(6));
                        ordermodifier.setModifierPrice(cursor1.getDouble(7));
                        ordermodifier.setModifierCost(cursor1.getDouble(8));
                        arraylist1.add(ordermodifier);
                    } while (cursor1.moveToNext());
                }
                cursor1.close();
                orderitem.setOrderModifiers(arraylist1);
                arraylist.add(orderitem);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final void b(OrderItem orderitem)
    {
        a.beginTransaction();
        if (orderitem.getQty() != orderitem.getOrderQty())
        {
            break MISSING_BLOCK_LABEL_148;
        }
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("cancelReason", orderitem.getCancelReason());
        contentvalues.put("status", Integer.valueOf(orderitem.getStatus()));
        contentvalues.put("endTime", orderitem.getEndTime());
        a.update("rest_order_item", contentvalues, (new StringBuilder("rowid=")).append(orderitem.getId()).toString(), null);
_L1:
        a.execSQL((new StringBuilder("UPDATE rest_item_qty SET qty= ( MAX(0, qty+")).append(orderitem.getOrderQty()).append(")) WHERE itemId=").append(orderitem.getItemId()).toString());
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
        ContentValues contentvalues1 = new ContentValues();
        contentvalues1.put("qty", Integer.valueOf(orderitem.getQty() - orderitem.getOrderQty()));
        a.update("rest_order_item", contentvalues1, (new StringBuilder("rowid=")).append(orderitem.getId()).toString(), null);
        ContentValues contentvalues2 = new ContentValues();
        contentvalues2.put("orderId", Long.valueOf(orderitem.getOrderId()));
        contentvalues2.put("categoryName", orderitem.getCategoryName());
        contentvalues2.put("itemId", Long.valueOf(orderitem.getItemId()));
        contentvalues2.put("itemName", orderitem.getItemName());
        contentvalues2.put("qty", Integer.valueOf(orderitem.getOrderQty()));
        contentvalues2.put("price", Double.valueOf(orderitem.getItemPrice()));
        contentvalues2.put("cost", Double.valueOf(orderitem.getItemCost()));
        contentvalues2.put("remark", orderitem.getRemark());
        contentvalues2.put("ordertime", orderitem.getStartTime());
        contentvalues2.put("status", Integer.valueOf(orderitem.getStatus()));
        contentvalues2.put("discountAmt", Double.valueOf(orderitem.getDiscountAmt()));
        contentvalues2.put("discountName", orderitem.getDiscountName());
        contentvalues2.put("endTime", orderitem.getEndTime());
        contentvalues2.put("cancelReason", orderitem.getCancelReason());
        a.insert("rest_order_item", null, contentvalues2);
          goto _L1
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
    }

    public final void c(OrderItem orderitem)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("price", Double.valueOf(orderitem.getItemPrice()));
        a.update("rest_order_item", contentvalues, (new StringBuilder("rowid=")).append(orderitem.getId()).toString(), null);
    }
}
