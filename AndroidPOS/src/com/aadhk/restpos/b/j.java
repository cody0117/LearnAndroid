// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.b;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.OrderModifier;
import java.util.ArrayList;
import java.util.List;

public final class j
{

    private static final String a[] = {
        "rowid as _id", "ordertime", "tableid", "tableName", "remark"
    };
    private final SQLiteDatabase b;

    public j(SQLiteDatabase sqlitedatabase)
    {
        b = sqlitedatabase;
    }

    public final List a()
    {
        ArrayList arraylist = new ArrayList();
        Cursor cursor = b.query(false, "rest_order", a, null, null, null, null, null, null);
        if (cursor.moveToFirst())
        {
            do
            {
                Order order = new Order();
                ArrayList arraylist1 = new ArrayList();
                order.setId(cursor.getLong(0));
                order.setOrderTime(cursor.getString(1));
                order.setTableId(cursor.getLong(2));
                order.setTableName(cursor.getString(3));
                order.setKitchenRemark(cursor.getString(4));
                SQLiteDatabase sqlitedatabase = b;
                String as[] = new String[1];
                as[0] = (new StringBuilder()).append(order.getId()).toString();
                Cursor cursor1 = sqlitedatabase.rawQuery("select a.rowid, categoryName, itemName, itemId, a.price, a.qty, remark, cancelReason, status, printerId, ordertime, tax1Id, tax2Id, discountAmt, discountName, billId from rest_order_item as a left join rest_item as b on a.itemId=b.rowid  where orderid=? order by orderTime asc", as);
                if (cursor1.moveToFirst())
                {
                    do
                    {
                        OrderItem orderitem = new OrderItem();
                        orderitem.setId(cursor1.getLong(0));
                        orderitem.setCategoryName(cursor1.getString(1));
                        orderitem.setItemName(cursor1.getString(2));
                        orderitem.setItemId(cursor1.getLong(3));
                        orderitem.setItemPrice(cursor1.getDouble(4));
                        orderitem.setQty(cursor1.getInt(5));
                        orderitem.setRemark(cursor1.getString(6));
                        orderitem.setCancelReason(cursor1.getString(7));
                        orderitem.setStatus(cursor1.getInt(8));
                        orderitem.setPrinterId(cursor1.getInt(9));
                        orderitem.setStartTime(cursor1.getString(10));
                        orderitem.setTax1Id(cursor1.getInt(11));
                        orderitem.setTax2Id(cursor1.getInt(12));
                        orderitem.setDiscountAmt(cursor1.getDouble(13));
                        orderitem.setDiscountName(cursor1.getString(14));
                        orderitem.setBillId(cursor1.getLong(15));
                        orderitem.setOrderId(order.getId());
                        ArrayList arraylist2 = new ArrayList();
                        SQLiteDatabase sqlitedatabase1 = b;
                        String as1[] = new String[2];
                        as1[0] = (new StringBuilder()).append(order.getId()).toString();
                        as1[1] = (new StringBuilder()).append(orderitem.getId()).toString();
                        Cursor cursor2 = sqlitedatabase1.rawQuery("select rowid, orderid, itemId, orderItemId, qty,  modifierName, type, price from rest_order_modifier where orderid=? and orderItemId=? order by type asc, modifierName asc", as1);
                        if (cursor2.moveToFirst())
                        {
                            do
                            {
                                OrderModifier ordermodifier = new OrderModifier();
                                ordermodifier.setId(cursor2.getLong(0));
                                ordermodifier.setOrderid(cursor2.getLong(1));
                                ordermodifier.setItemid(cursor2.getLong(2));
                                ordermodifier.setOrderItemId(cursor2.getLong(3));
                                ordermodifier.setQty(cursor2.getInt(4));
                                ordermodifier.setModifierName(cursor2.getString(5));
                                ordermodifier.setType(cursor2.getInt(6));
                                ordermodifier.setModifierPrice(cursor2.getDouble(7));
                                arraylist2.add(ordermodifier);
                            } while (cursor2.moveToNext());
                            cursor2.close();
                            orderitem.setOrderModifiers(arraylist2);
                        }
                        arraylist1.add(orderitem);
                    } while (cursor1.moveToNext());
                    cursor1.close();
                }
                order.setOrderItems(arraylist1);
                arraylist.add(order);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

}
