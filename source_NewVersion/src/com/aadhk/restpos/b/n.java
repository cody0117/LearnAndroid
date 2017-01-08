// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.b;

import android.content.ContentValues;
import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.OrderModifier;
import com.aadhk.restpos.bean.ReportItem;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class n
{

    private final SQLiteDatabase a;

    public n(SQLiteDatabase sqlitedatabase)
    {
        a = sqlitedatabase;
    }

    private List a(long l, String s)
    {
        ArrayList arraylist = new ArrayList();
        String s1 = (new StringBuilder("select a.rowid, categoryName, itemName, itemId, a.price, num, remark, cancelReason, status, printerId, ordertime, tax1Id, tax2Id, disAmt, disName, billId from rest_orderItem as a left join rest_item as b on a.itemId=b.rowid  where orderid=? ")).append(s).toString();
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
                orderitem.setNum(cursor.getInt(5));
                orderitem.setRemark(cursor.getString(6));
                orderitem.setCancelReason(cursor.getString(7));
                orderitem.setStatus(cursor.getInt(8));
                orderitem.setPrinterId(cursor.getInt(9));
                orderitem.setStartTime(cursor.getString(10));
                orderitem.setTax1Id(cursor.getInt(11));
                orderitem.setTax2Id(cursor.getInt(12));
                orderitem.setDisAmt(cursor.getDouble(13));
                orderitem.setDisName(cursor.getString(14));
                orderitem.setBillId(cursor.getLong(15));
                orderitem.setOrderId(l);
                ArrayList arraylist1 = new ArrayList();
                SQLiteDatabase sqlitedatabase1 = a;
                String as1[] = new String[2];
                as1[0] = (new StringBuilder()).append(l).toString();
                as1[1] = (new StringBuilder()).append(orderitem.getId()).toString();
                Cursor cursor1 = sqlitedatabase1.rawQuery("select rowid, orderid, itemId, supplementid, orderItemId, qty,  supplementName, type, price from rest_orderSupplement where orderid=? and orderItemId=? order by type asc, supplementName asc", as1);
                if (cursor1.moveToFirst())
                {
                    do
                    {
                        OrderModifier ordermodifier = new OrderModifier();
                        ordermodifier.setId(cursor1.getLong(0));
                        ordermodifier.setOrderid(cursor1.getLong(1));
                        ordermodifier.setItemid(cursor1.getLong(2));
                        ordermodifier.setModifierId(cursor1.getLong(3));
                        ordermodifier.setOrderItemId(cursor1.getLong(4));
                        ordermodifier.setQty(cursor1.getInt(5));
                        ordermodifier.setModifierName(cursor1.getString(6));
                        ordermodifier.setType(cursor1.getInt(7));
                        ordermodifier.setModifierPrice(cursor1.getDouble(8));
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
        return a(l, "order by orderTime asc");
    }

    public final List a(Context context, String s, String s1, boolean flag)
    {
        String s2;
        String s3;
        String s4;
        ArrayList arraylist;
        Cursor cursor;
        if (flag)
        {
            s2 = " and rest_orderitem.status=1";
        } else
        {
            s2 = " and rest_orderitem.status!=1";
        }
        s3 = (new StringBuilder("select itemName, sum(num) as totalCount, sum(price*num) as totalAmount from rest_orderitem, rest_order where rest_orderitem.orderid=rest_order.rowid and (rest_order.status=1 or rest_order.status=2) ")).append(s2).append(" and rest_order.endtime between '").append(s).append("' and '").append(s1).append("'  group by itemName order by totalCount desc").toString();
        s4 = (new StringBuilder("select rest_orderitem.rowId from rest_orderitem, rest_order where rest_orderitem.orderid=rest_order.rowid and rest_order.status=1")).append(s2).append(" and itemName=? ").append(s2).append(" and rest_order.endtime between '").append(s).append("' and '").append(s1).append("'").toString();
        arraylist = new ArrayList();
        cursor = a.rawQuery(s3, null);
        if (cursor.moveToFirst())
        {
            double d = 0.0D;
            int i = 0;
            do
            {
                String s5 = cursor.getString(0);
                int j = cursor.getInt(1);
                double d1 = cursor.getDouble(2);
                Cursor cursor1 = a.rawQuery(s4, new String[] {
                    s5
                });
                if (cursor1.moveToFirst())
                {
                    do
                    {
                        long l = cursor1.getLong(0);
                        SQLiteDatabase sqlitedatabase = a;
                        String as[] = new String[1];
                        as[0] = (new StringBuilder()).append(l).toString();
                        Cursor cursor2 = sqlitedatabase.rawQuery("select type, price, qty as totalAmount from rest_orderSupplement where orderItemId=?", as);
                        if (cursor2.moveToFirst())
                        {
                            do
                            {
                                int k = cursor2.getInt(0);
                                double d2 = cursor2.getDouble(1);
                                double d3 = cursor2.getInt(2);
                                ReportItem reportitem;
                                ReportItem reportitem1;
                                if (k == 2)
                                {
                                    d1 -= d2 * d3;
                                } else
                                {
                                    d1 += d2 * d3;
                                }
                            } while (cursor2.moveToNext());
                        }
                        cursor2.close();
                    } while (cursor1.moveToNext());
                }
                cursor1.close();
                reportitem = new ReportItem();
                reportitem.setName(s5);
                reportitem.setCount(j);
                reportitem.setAmount(d1);
                d += d1;
                i += j;
                arraylist.add(reportitem);
            } while (cursor.moveToNext());
            if (i > 0)
            {
                reportitem1 = new ReportItem();
                reportitem1.setName(context.getResources().getString(0x7f0901af));
                reportitem1.setAmount(d);
                reportitem1.setCount(i);
                arraylist.add(reportitem1);
            }
        }
        cursor.close();
        return arraylist;
    }

    public final List a(String s, String s1, String s2)
    {
        ArrayList arraylist = new ArrayList();
        String s3 = (new StringBuilder("select categoryName, sum(rest_orderitem.num) as qty, sum(rest_orderitem.price) as amt from rest_orderitem, rest_order where rest_orderitem.orderid=rest_order.rowid and rest_order.status=1 and rest_orderitem.status!=1 and rest_order.endtime between '")).append(s).append("' and '").append(s1).append("'  group by categoryName order by ").append(s2).toString();
        String s4 = (new StringBuilder("select rest_orderitem.rowId from rest_orderitem, rest_order where rest_orderitem.orderid=rest_order.rowid and rest_order.status=1 and rest_orderitem.status!=1 and categoryName=? and rest_order.endtime between '")).append(s).append("' and '").append(s1).append("'").toString();
        Cursor cursor = a.rawQuery(s3, null);
        if (cursor.moveToFirst())
        {
            do
            {
                String s5 = cursor.getString(0);
                int i = cursor.getInt(1);
                double d = cursor.getDouble(2);
                Cursor cursor1 = a.rawQuery(s4, new String[] {
                    s5
                });
                if (cursor1.moveToFirst())
                {
                    do
                    {
                        long l = cursor1.getLong(0);
                        SQLiteDatabase sqlitedatabase = a;
                        String as[] = new String[1];
                        as[0] = (new StringBuilder()).append(l).toString();
                        Cursor cursor2 = sqlitedatabase.rawQuery("select type, price, qty as totalAmount from rest_orderSupplement where orderItemId=?", as);
                        if (cursor2.moveToFirst())
                        {
                            do
                            {
                                int j = cursor2.getInt(0);
                                double d1 = cursor2.getDouble(1);
                                double d2 = cursor2.getInt(2);
                                ReportItem reportitem;
                                if (j == 2)
                                {
                                    d -= d1 * d2;
                                } else
                                {
                                    d += d1 * d2;
                                }
                            } while (cursor2.moveToNext());
                        }
                        cursor2.close();
                    } while (cursor1.moveToNext());
                }
                cursor1.close();
                reportitem = new ReportItem();
                reportitem.setName(s5);
                reportitem.setCount(i);
                reportitem.setAmount(d);
                arraylist.add(reportitem);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final List a(String s, String s1, String s2, String s3, long l, String s4)
    {
        String s5 = (new StringBuilder("select rest_category.name, itemName, sum(rest_orderitem.num) as qty, sum(rest_orderitem.price) as amt from rest_orderitem, rest_category, rest_item where rest_orderitem.itemid=rest_item.rowid and rest_item.categoryid=rest_category.rowid and status!=1 and endtime between '")).append(s).append(" ").append(s2).append("' and '").append(s1).append(" ").append(s3).append("' and  categoryId=").append(l).append(" group by itemId order by ").append(s4).toString();
        ArrayList arraylist = new ArrayList();
        Cursor cursor = a.rawQuery(s5, null);
        if (cursor.moveToFirst())
        {
            do
            {
                ReportItem reportitem = new ReportItem();
                reportitem.setId(cursor.getInt(0));
                reportitem.setName(cursor.getString(1));
                reportitem.setCount(cursor.getInt(2));
                reportitem.setAmount(cursor.getDouble(3));
                arraylist.add(reportitem);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final void a(long l, long l1)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("orderid", Long.valueOf(l));
        a.update("rest_orderItem", contentvalues, (new StringBuilder("rowid=")).append(l1).toString(), null);
    }

    public final void a(long l, List list)
    {
        a.beginTransaction();
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            OrderItem orderitem = (OrderItem)iterator.next();
            ContentValues contentvalues = new ContentValues();
            contentvalues.put("orderId", Long.valueOf(l));
            contentvalues.put("categoryName", orderitem.getCategoryName());
            contentvalues.put("itemId", Long.valueOf(orderitem.getItemId()));
            contentvalues.put("itemName", orderitem.getItemName());
            contentvalues.put("num", Integer.valueOf(orderitem.getNum()));
            contentvalues.put("price", Double.valueOf(orderitem.getItemPrice()));
            contentvalues.put("remark", orderitem.getRemark());
            contentvalues.put("ordertime", orderitem.getStartTime());
            contentvalues.put("status", Integer.valueOf(orderitem.getStatus()));
            contentvalues.put("disAmt", Double.valueOf(orderitem.getDisAmt()));
            contentvalues.put("disName", orderitem.getDisName());
            long l1 = a.insert("rest_orderItem", null, contentvalues);
            Iterator iterator1 = orderitem.getOrderModifiers().iterator();
            while (iterator1.hasNext()) 
            {
                OrderModifier ordermodifier = (OrderModifier)iterator1.next();
                ContentValues contentvalues1 = new ContentValues();
                contentvalues1.put("orderId", Long.valueOf(l));
                contentvalues1.put("itemId", Long.valueOf(orderitem.getItemId()));
                contentvalues1.put("orderItemId", Long.valueOf(l1));
                contentvalues1.put("supplementid", Long.valueOf(ordermodifier.getModifierId()));
                contentvalues1.put("qty", Integer.valueOf(ordermodifier.getQty()));
                contentvalues1.put("supplementName", ordermodifier.getModifierName());
                contentvalues1.put("type", Integer.valueOf(ordermodifier.getType()));
                contentvalues1.put("price", Double.valueOf(ordermodifier.getModifierPrice()));
                a.insert("rest_orderSupplement", null, contentvalues1);
            }
        }

        break MISSING_BLOCK_LABEL_408;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
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
        a.update("rest_orderItem", contentvalues, (new StringBuilder("rowid=")).append(orderitem.getId()).toString(), null);
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
            s1 = (new StringBuilder("  b.categoryid=c.rowid and  a.itemid=b.rowid and d.rowid=a.orderid and d.status=0 and ")).append(s).toString();
        } else
        {
            s1 = "  b.categoryid=c.rowid and  a.itemid=b.rowid and d.rowid=a.orderid and d.status=0";
        }
        cursor = a.query(false, "rest_orderItem a, rest_item b,  rest_category c, rest_order d ", as, s1, null, null, null, null, null);
        i = cursor.getCount();
        flag = false;
        if (i != 0)
        {
            flag = true;
        }
        cursor.close();
        return flag;
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
        Cursor cursor = sqlitedatabase.rawQuery("select a.rowid, a.billId, a.itemName, a.price, a.num, tax1Id, tax2Id from rest_orderItem as a left join rest_item as b on a.itemId=b.rowid  where orderid=? and (billId=? or billId=0) and status!=1 order by a.itemName asc", as);
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
                orderitem.setNum(cursor.getInt(4));
                orderitem.setTax1Id(cursor.getInt(5));
                orderitem.setTax2Id(cursor.getInt(6));
                orderitem.setOrderId(l);
                arraylist1 = new ArrayList();
                sqlitedatabase1 = a;
                as1 = new String[2];
                as1[0] = (new StringBuilder()).append(l).toString();
                as1[1] = (new StringBuilder()).append(orderitem.getId()).toString();
                cursor1 = sqlitedatabase1.rawQuery("select rowid, orderid, itemId, supplementid, orderItemId, qty,  supplementName, type, price from rest_orderSupplement where orderid=? and orderItemId=? order by type asc, supplementName asc", as1);
                if (cursor1.moveToFirst())
                {
                    do
                    {
                        OrderModifier ordermodifier = new OrderModifier();
                        ordermodifier.setId(cursor1.getLong(0));
                        ordermodifier.setOrderid(cursor1.getLong(1));
                        ordermodifier.setItemid(cursor1.getLong(2));
                        ordermodifier.setModifierId(cursor1.getLong(3));
                        ordermodifier.setOrderItemId(cursor1.getLong(4));
                        ordermodifier.setQty(cursor1.getInt(5));
                        ordermodifier.setModifierName(cursor1.getString(6));
                        ordermodifier.setType(cursor1.getInt(7));
                        ordermodifier.setModifierPrice(cursor1.getDouble(8));
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
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("price", Double.valueOf(orderitem.getItemPrice()));
        a.update("rest_orderItem", contentvalues, (new StringBuilder("rowid=")).append(orderitem.getId()).toString(), null);
    }
}
