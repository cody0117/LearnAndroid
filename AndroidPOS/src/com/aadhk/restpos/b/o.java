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

public final class o
{

    private static final String a[] = {
        "rowid as _id", "ordertime", "tableid", "tableName", "customerId", "customerName", "personnum", "status", "splitType", "orderNum", 
        "receiptNote", "discountReason", "remark", "orderCount", "waiterName"
    };
    private final SQLiteDatabase b;

    public o(SQLiteDatabase sqlitedatabase)
    {
        b = sqlitedatabase;
    }

    public final long a(Order order, Order order1, String s)
    {
        long l = order1.getId();
        b.beginTransaction();
        if (l != 0L) goto _L2; else goto _L1
_L1:
        long l1;
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("isOpen", Boolean.valueOf(true));
        b.update("rest_table", contentvalues, (new StringBuilder("rowid=")).append(order1.getTableId()).toString(), null);
        ContentValues contentvalues1 = new ContentValues();
        contentvalues1.put("ordertime", order.getOrderTime());
        contentvalues1.put("tableid", Long.valueOf(order1.getTableId()));
        contentvalues1.put("personnum", Integer.valueOf(order.getPersonNum()));
        contentvalues1.put("orderNum", order.getOrderNum());
        contentvalues1.put("status", Integer.valueOf(order.getStatus()));
        contentvalues1.put("tableName", order1.getTableName());
        contentvalues1.put("remark", order.getKitchenRemark());
        if (order1.getCustomerId() == 0L)
        {
            contentvalues1.put("customerId", Long.valueOf(order.getCustomerId()));
            contentvalues1.put("customerName", order.getCustomerName());
        }
        l1 = b.insert("rest_order", null, contentvalues1);
_L4:
        String s1 = (new StringBuilder()).append(order.getTableName()).append("(#").append(order.getId()).append(") \u2192 ").append(order1.getTableName()).append("(#").append(l1).append(")").toString();
        String s2 = (new StringBuilder("update rest_order set status= 4, endtime='")).append(com.aadhk.restpos.util.o.c()).append("', cancelReason='").append(s1).append("', cancelPerson='").append(s).append("' where rowid=").append(order.getId()).toString();
        b.execSQL(s2);
        String s3 = (new StringBuilder("update rest_table set isOpen= 0 where rowid=")).append(order.getTableId()).toString();
        b.execSQL(s3);
        ArrayList arraylist = new ArrayList();
        SQLiteDatabase sqlitedatabase = b;
        String as[] = new String[1];
        as[0] = (new StringBuilder()).append(order.getId()).toString();
        Cursor cursor = sqlitedatabase.rawQuery("select a.rowid, categoryName, itemName, itemId, a.price, a.qty, remark, cancelReason, status, printerId, ordertime, tax1Id, tax2Id,tax3Id, discountAmt, discountName, billId from rest_order_item as a left join rest_item as b on a.itemId=b.rowid  where orderid=? order by status asc, itemName", as);
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
                orderitem.setQty(cursor.getInt(5));
                orderitem.setRemark(cursor.getString(6));
                orderitem.setCancelReason(cursor.getString(7));
                orderitem.setStatus(cursor.getInt(8));
                orderitem.setPrinterId(cursor.getInt(9));
                orderitem.setStartTime(cursor.getString(10));
                orderitem.setTax1Id(cursor.getInt(11));
                orderitem.setTax2Id(cursor.getInt(12));
                orderitem.setTax3Id(cursor.getInt(13));
                orderitem.setDiscountAmt(cursor.getDouble(14));
                orderitem.setDiscountName(cursor.getString(15));
                orderitem.setBillId(cursor.getLong(16));
                orderitem.setOrderId(order.getId());
                ArrayList arraylist1 = new ArrayList();
                SQLiteDatabase sqlitedatabase1 = b;
                String as1[] = new String[2];
                as1[0] = (new StringBuilder()).append(order.getId()).toString();
                as1[1] = (new StringBuilder()).append(orderitem.getId()).toString();
                Cursor cursor1 = sqlitedatabase1.rawQuery("select rowid, orderid, itemId, orderItemId, qty,  modifierName, type, price from rest_order_modifier where orderid=? and orderItemId=? order by type asc, modifierName asc", as1);
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
                        arraylist1.add(ordermodifier);
                    } while (cursor1.moveToNext());
                }
                cursor1.close();
                orderitem.setOrderModifiers(arraylist1);
                arraylist.add(orderitem);
            } while (cursor.moveToNext());
        }
        cursor.close();
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext();)
        {
            OrderItem orderitem1 = (OrderItem)iterator.next();
            ContentValues contentvalues2 = new ContentValues();
            contentvalues2.put("orderId", Long.valueOf(l1));
            contentvalues2.put("categoryName", orderitem1.getCategoryName());
            contentvalues2.put("itemId", Long.valueOf(orderitem1.getItemId()));
            contentvalues2.put("itemName", orderitem1.getItemName());
            contentvalues2.put("qty", Integer.valueOf(orderitem1.getQty()));
            contentvalues2.put("price", Double.valueOf(orderitem1.getItemPrice()));
            contentvalues2.put("cost", Double.valueOf(orderitem1.getItemCost()));
            contentvalues2.put("remark", orderitem1.getRemark());
            contentvalues2.put("ordertime", orderitem1.getStartTime());
            contentvalues2.put("status", Integer.valueOf(orderitem1.getStatus()));
            contentvalues2.put("discountAmt", Double.valueOf(orderitem1.getDiscountAmt()));
            contentvalues2.put("discountName", orderitem1.getDiscountName());
            long l2 = b.insert("rest_order_item", null, contentvalues2);
            Iterator iterator1 = orderitem1.getOrderModifiers().iterator();
            while (iterator1.hasNext()) 
            {
                OrderModifier ordermodifier1 = (OrderModifier)iterator1.next();
                ContentValues contentvalues3 = new ContentValues();
                contentvalues3.put("orderId", Long.valueOf(l1));
                contentvalues3.put("itemId", Long.valueOf(orderitem1.getItemId()));
                contentvalues3.put("orderItemId", Long.valueOf(l2));
                contentvalues3.put("qty", Integer.valueOf(ordermodifier1.getQty()));
                contentvalues3.put("modifierName", ordermodifier1.getModifierName());
                contentvalues3.put("type", Integer.valueOf(ordermodifier1.getType()));
                contentvalues3.put("price", Double.valueOf(ordermodifier1.getModifierPrice()));
                contentvalues3.put("cost", Double.valueOf(ordermodifier1.getModifierCost()));
                b.insert("rest_order_modifier", null, contentvalues3);
            }
        }

        break MISSING_BLOCK_LABEL_1424;
        Exception exception;
        exception;
        b.endTransaction();
        throw exception;
_L2:
        SQLiteDatabase sqlitedatabase2 = b;
        String as2[] = new String[2];
        as2[0] = (new StringBuilder()).append(order.getId()).toString();
        as2[1] = (new StringBuilder()).append(l).toString();
        sqlitedatabase2.execSQL("update rest_order set personnum= personnum+(select personnum from rest_order where rowid=?) where rowid=?", as2);
        l1 = l;
        if (true) goto _L4; else goto _L3
_L3:
        b.setTransactionSuccessful();
        b.endTransaction();
        return l1;
    }

    public final List a(String s)
    {
        ArrayList arraylist = new ArrayList();
        String s1 = (new StringBuilder("select rowid, tablename from rest_order where (status!=1 and status!=2 and status!=4 and tableId>0)  and tableName !='")).append(s).append("' order by tableName").toString();
        Cursor cursor = b.rawQuery(s1, null);
        if (cursor.moveToFirst())
        {
            do
            {
                Order order = new Order();
                order.setId(cursor.getLong(0));
                order.setTableName(cursor.getString(1));
                arraylist.add(order);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final List a(String s, String s1, String s2, String s3)
    {
        ArrayList arraylist = new ArrayList();
        String s4 = (new StringBuilder("select rowid, ordertime, endtime, tableid, tablename, personnum, status, cancelReason, subTotal, discountAmt, serviceAmt, gratuity, tax1Amt, tax2Amt, tax3Amt, tax1Name, tax2Name,tax3Name, amount, orderNum, receiptNote, discountReason, splitType , cashierName, customerId, customerName,remark from rest_order where endtime>='")).append(s).append(" ").append(s2).append("' and endtime<='").append(s1).append(" ").append(s3).append("' and (status=1 or status=2)").toString();
        Cursor cursor = b.rawQuery(s4, null);
        if (cursor.moveToFirst())
        {
            do
            {
                Order order = new Order();
                order.setId(cursor.getLong(0));
                order.setOrderTime(cursor.getString(1));
                order.setEndTime(cursor.getString(2));
                order.setTableId(cursor.getInt(3));
                order.setTableName(cursor.getString(4));
                order.setPersonNum(cursor.getInt(5));
                order.setStatus(cursor.getInt(6));
                order.setCancelReason(cursor.getString(7));
                order.setSubTotal(cursor.getDouble(8));
                order.setDiscountAmt(cursor.getDouble(9));
                order.setServiceAmt(cursor.getDouble(10));
                order.setGratuity(cursor.getDouble(11));
                order.setTax1Amt(cursor.getDouble(12));
                order.setTax2Amt(cursor.getDouble(13));
                order.setTax3Amt(cursor.getDouble(14));
                order.setTax1Name(cursor.getString(15));
                order.setTax2Name(cursor.getString(16));
                order.setTax3Name(cursor.getString(17));
                order.setAmount(cursor.getDouble(18));
                order.setOrderNum(cursor.getString(19));
                order.setReceiptNote(cursor.getString(20));
                order.setDiscountReason(cursor.getString(21));
                order.setSplitType(cursor.getShort(22));
                order.setCashierName(cursor.getString(23));
                order.setCustomerId(cursor.getLong(24));
                order.setCustomerName(cursor.getString(25));
                order.setKitchenRemark(cursor.getString(26));
                SQLiteDatabase sqlitedatabase = b;
                String as[] = new String[1];
                as[0] = (new StringBuilder()).append(order.getId()).toString();
                Cursor cursor1 = sqlitedatabase.rawQuery("select * from rest_order_item where  status=1 and orderId=?", as);
                if (cursor1.moveToFirst())
                {
                    order.setHasVoidItem(true);
                }
                cursor1.close();
                arraylist.add(order);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final void a(long l)
    {
        b.beginTransaction();
        b.delete("rest_order", (new StringBuilder("rowid=")).append(l).toString(), null);
        b.delete("rest_order_item", (new StringBuilder("orderId=")).append(l).toString(), null);
        b.delete("rest_order_modifier", (new StringBuilder("orderId=")).append(l).toString(), null);
        b.delete("rest_order_payment", (new StringBuilder("orderId=")).append(l).toString(), null);
        b.delete("rest_split_bill", (new StringBuilder("orderId=")).append(l).toString(), null);
        b.setTransactionSuccessful();
        b.endTransaction();
    }

    public final void a(long l, int i)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("personnum", Integer.valueOf(i));
        b.update("rest_order", contentvalues, (new StringBuilder("rowid=")).append(l).toString(), null);
    }

    public final void a(String s, long l)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("remark", s);
        b.update("rest_order", contentvalues, (new StringBuilder("rowid=")).append(l).toString(), null);
    }

    public final Order b(long l)
    {
        Cursor cursor = b.query(false, "rest_order", a, (new StringBuilder("status!=1 and status!=2 and status!=4 and tableId=")).append(l).toString(), null, null, null, null, null);
        boolean flag = cursor.moveToFirst();
        Order order = null;
        if (flag)
        {
            order = new Order();
            order.setId(cursor.getLong(0));
            order.setOrderTime(cursor.getString(1));
            order.setTableId(l);
            order.setTableName(cursor.getString(3));
            order.setCustomerId(cursor.getLong(4));
            order.setCustomerName(cursor.getString(5));
            order.setPersonNum(cursor.getInt(6));
            order.setStatus(cursor.getInt(7));
            order.setSplitType(cursor.getShort(8));
            order.setOrderNum(cursor.getString(9));
            order.setReceiptNote(cursor.getString(10));
            order.setDiscountReason(cursor.getString(11));
            order.setKitchenRemark(cursor.getString(12));
            order.setOrderCount(cursor.getInt(13));
            order.setWaiterName(cursor.getString(14));
        }
        cursor.close();
        return order;
    }

    public final Order c(long l)
    {
        Cursor cursor = b.query(false, "rest_order", a, (new StringBuilder(" rowid=")).append(l).toString(), null, null, null, null, null);
        boolean flag = cursor.moveToFirst();
        Order order = null;
        if (flag)
        {
            order = new Order();
            order.setId(l);
            order.setOrderTime(cursor.getString(1));
            order.setTableId(cursor.getLong(2));
            order.setTableName(cursor.getString(3));
            order.setCustomerId(cursor.getLong(4));
            order.setCustomerName(cursor.getString(5));
            order.setPersonNum(cursor.getInt(6));
            order.setStatus(cursor.getInt(7));
            order.setSplitType(cursor.getShort(8));
            order.setOrderNum(cursor.getString(9));
            order.setReceiptNote(cursor.getString(10));
            order.setDiscountReason(cursor.getString(11));
            order.setKitchenRemark(cursor.getString(12));
        }
        cursor.close();
        return order;
    }

    public final boolean d(long l)
    {
        String as[] = {
            "rowid"
        };
        String s = "isOpen=1";
        if (l > 0L)
        {
            s = (new StringBuilder()).append(s).append(" and rowid=").append(l).toString();
        }
        Cursor cursor = b.query(false, "rest_table", as, s, null, null, null, null, null);
        int i = cursor.getCount();
        boolean flag = false;
        if (i != 0)
        {
            flag = true;
        }
        cursor.close();
        return flag;
    }

    public final List e(long l)
    {
        String s = "";
        if (l > 0L)
        {
            s = (new StringBuilder("b.itemid=")).append(l).append(" and ").toString();
        }
        String s1 = (new StringBuilder("select a.rowid  from rest_order as a left join rest_order_item as b on a.rowid=b.orderid where ")).append(s).append(" (a.status!=2 and a.status!=1 and a.status!=4 and b.status!=1) group by a.rowid").toString();
        Cursor cursor = b.rawQuery(s1, null);
        ArrayList arraylist = new ArrayList();
        if (cursor.moveToFirst())
        {
            do
            {
                arraylist.addAll(f(cursor.getInt(0)));
            } while (cursor.moveToNext());
        }
        return arraylist;
    }

    public final List f(long l)
    {
        String s = "";
        if (l > 0L)
        {
            s = (new StringBuilder("a.rowid=")).append(l).append(" and ").toString();
        }
        String s1 = (new StringBuilder("select a.rowid,  sum(b.price*b.qty) as amount, a.ordertime, a.tableName, a.tableId, a.status, splitType, a.orderNum, a.personnum, a.customerId, a.customerName from rest_order as a left join rest_order_item as b on a.rowid=b.orderid where ")).append(s).append(" (a.status!=2 and a.status!=1 and a.status!=4 and b.status!=1) group by a.rowid").toString();
        ArrayList arraylist = new ArrayList();
        Cursor cursor = b.rawQuery(s1, null);
        if (cursor.moveToFirst())
        {
            do
            {
                long l1 = cursor.getLong(0);
                double d1 = cursor.getDouble(1);
                String s2 = cursor.getString(2);
                String s3 = cursor.getString(3);
                long l2 = cursor.getLong(4);
                int i = cursor.getInt(5);
                short word0 = cursor.getShort(6);
                String s4 = cursor.getString(7);
                int j = cursor.getInt(8);
                long l3 = cursor.getLong(9);
                String s5 = cursor.getString(10);
                SQLiteDatabase sqlitedatabase = b;
                String as[] = new String[1];
                as[0] = (new StringBuilder()).append(l1).toString();
                Cursor cursor1 = sqlitedatabase.rawQuery("select type, price, qty from rest_order_modifier where orderid=?", as);
                if (cursor1.moveToFirst())
                {
                    do
                    {
                        int k = cursor1.getInt(0);
                        double d2 = cursor1.getDouble(1);
                        int i1 = cursor1.getInt(2);
                        Order order;
                        if (k == 1)
                        {
                            d1 += d2 * (double)i1;
                        } else
                        {
                            d1 -= d2 * (double)i1;
                        }
                    } while (cursor1.moveToNext());
                }
                cursor1.close();
                order = new Order();
                order.setId(l1);
                order.setAmount(d1);
                order.setOrderTime(s2);
                order.setTableName(s3);
                order.setTableId(l2);
                order.setStatus(i);
                order.setSplitType(word0);
                order.setOrderNum(s4);
                order.setPersonNum(j);
                order.setCustomerId(l3);
                order.setCustomerName(s5);
                arraylist.add(order);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final void g(long l)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("status", Integer.valueOf(3));
        b.update("rest_order", contentvalues, (new StringBuilder("rowid=")).append(l).toString(), null);
    }

}
