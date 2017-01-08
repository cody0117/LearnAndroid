// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.b;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.aadhk.restpos.bean.Customer;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.OrderModifier;
import com.aadhk.restpos.bean.OrderPayment;
import java.util.Iterator;
import java.util.List;

public final class ab
{

    private final SQLiteDatabase a;

    public ab(SQLiteDatabase sqlitedatabase)
    {
        a = sqlitedatabase;
    }

    public final void a()
    {
        a.beginTransaction();
        a.delete("rest_table_group", null, null);
        a.delete("rest_table", null, null);
        a.delete("rest_customer", null, null);
        a.delete("rest_category", null, null);
        a.delete("rest_item", null, null);
        a.delete("rest_item_qty", null, null);
        a.delete("rest_modifier", null, null);
        a.delete("rest_modifier_group", null, null);
        a.delete("rest_price_sechedule", null, null);
        a.delete("rest_order", null, null);
        a.delete("rest_order_item", null, null);
        a.delete("rest_order_modifier", null, null);
        a.delete("rest_order_payment", null, null);
        a.delete("rest_split_bill", null, null);
        a.delete("rest_cash_register", null, null);
        a.delete("rest_reservation", null, null);
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
    }

    public final void a(Order order)
    {
        ContentValues contentvalues;
        Iterator iterator;
        List list = order.getOrderPayments();
        a.beginTransaction();
        contentvalues = new ContentValues();
        contentvalues.put("isPaid", Integer.valueOf(1));
        a.update("rest_split_bill", contentvalues, (new StringBuilder("rowid=")).append(order.getBillId()).toString(), null);
        String s = (new StringBuilder("select discountAmt, tax1Amt, tax2Amt, tax3Amt, serviceAmt, gratuity, subtotal, amount from rest_order where rowid=")).append(order.getId()).toString();
        Cursor cursor = a.rawQuery(s, null);
        double d = order.getDiscountAmt();
        double d1 = order.getTax1Amt();
        double d2 = order.getTax2Amt();
        double d3 = order.getTax3Amt();
        double d4 = order.getServiceAmt();
        double d5 = order.getGratuity();
        double d6 = order.getSubTotal();
        double d7 = order.getAmount();
        if (cursor.moveToFirst())
        {
            d += cursor.getDouble(0);
            d1 += cursor.getDouble(1);
            d2 += cursor.getDouble(2);
            d3 += cursor.getDouble(3);
            d4 += cursor.getDouble(4);
            d5 += cursor.getDouble(5);
            d6 += cursor.getDouble(6);
            d7 += cursor.getDouble(7);
        }
        cursor.close();
        contentvalues.clear();
        contentvalues.put("discountAmt", Double.valueOf(d));
        contentvalues.put("tax1Amt", Double.valueOf(d1));
        contentvalues.put("tax2Amt", Double.valueOf(d2));
        contentvalues.put("tax3Amt", Double.valueOf(d3));
        contentvalues.put("tax1Name", order.getTax1Name());
        contentvalues.put("tax2Name", order.getTax2Name());
        contentvalues.put("tax3Name", order.getTax3Name());
        contentvalues.put("serviceAmt", Double.valueOf(d4));
        contentvalues.put("gratuity", Double.valueOf(d5));
        contentvalues.put("subtotal", Double.valueOf(d6));
        contentvalues.put("amount", Double.valueOf(d7));
        contentvalues.put("customerId", Long.valueOf(order.getCustomerId()));
        contentvalues.put("customerName", order.getCustomerName());
        a.update("rest_order", contentvalues, (new StringBuilder("rowid=")).append(order.getId()).toString(), null);
        iterator = list.iterator();
        ContentValues contentvalues1 = contentvalues;
        for (; iterator.hasNext(); a.insert("rest_order_payment", null, contentvalues1))
        {
            OrderPayment orderpayment = (OrderPayment)iterator.next();
            contentvalues1 = new ContentValues();
            contentvalues1.put("orderid", Long.valueOf(orderpayment.getOrderId()));
            contentvalues1.put("amount", Double.valueOf(orderpayment.getAmount()));
            contentvalues1.put("paidAmt", Double.valueOf(orderpayment.getPaid()));
            contentvalues1.put("changeAmt", Double.valueOf(orderpayment.getChangeAmt()));
            contentvalues1.put("paymentTime", orderpayment.getPaymentTime());
            contentvalues1.put("paymentMethodName", orderpayment.getPaymentMethodName());
            contentvalues1.put("paymentMethodType", Integer.valueOf(orderpayment.getPaymentMethodType()));
            contentvalues1.put("cashierName", orderpayment.getCashierName());
        }

        break MISSING_BLOCK_LABEL_641;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
        Cursor cursor1;
        String s1 = (new StringBuilder("select rowid from rest_split_bill where orderId=")).append(order.getId()).append(" and isPaid=0").toString();
        cursor1 = a.rawQuery(s1, null);
        boolean flag;
        if (cursor1.getCount() > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        order.setHasUnpaidBill(flag);
        cursor1.close();
        if (!order.isHasUnpaidBill())
        {
            contentvalues1.clear();
            contentvalues1.put("status", Integer.valueOf(1));
            contentvalues1.put("endtime", order.getEndTime());
            contentvalues1.put("cashierName", order.getCashierName());
            a.update("rest_order", contentvalues1, (new StringBuilder("rowid=")).append(order.getId()).toString(), null);
            contentvalues1.clear();
            contentvalues1.put("endtime", order.getEndTime());
            a.update("rest_order_item", contentvalues1, (new StringBuilder("orderid=")).append(order.getId()).toString(), null);
            contentvalues1.clear();
            contentvalues1.put("isOpen", Integer.valueOf(0));
            a.update("rest_table", contentvalues1, (new StringBuilder("rowid=")).append(order.getTableId()).toString(), null);
        }
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
    }

    public final void a(Order order, List list, Customer customer)
    {
        a.beginTransaction();
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("isOpen", Boolean.valueOf(true));
        a.update("rest_table", contentvalues, (new StringBuilder("rowid=")).append(order.getTableId()).toString(), null);
        if (customer == null) goto _L2; else goto _L1
_L1:
        ContentValues contentvalues1;
        long l;
        contentvalues1 = new ContentValues();
        contentvalues1.put("name", customer.getName());
        contentvalues1.put("address1", customer.getAddress1());
        contentvalues1.put("address2", customer.getAddress2());
        contentvalues1.put("address3", customer.getAddress3());
        contentvalues1.put("tel", customer.getTel());
        contentvalues1.put("email", customer.getEmail());
        l = customer.getId();
        if (l != 0L)
        {
            break MISSING_BLOCK_LABEL_227;
        }
        String s = (new StringBuilder("SELECT rowid from rest_customer where tel='")).append(customer.getTel()).append("'").toString();
        Cursor cursor = a.rawQuery(s, null);
        if (cursor.moveToFirst())
        {
            l = cursor.getInt(0);
        }
        cursor.close();
        if (l != 0L)
        {
            break MISSING_BLOCK_LABEL_868;
        }
        l = a.insert("rest_customer", null, contentvalues1);
_L3:
        order.setCustomerId(l);
        order.setCustomerName(customer.getName());
_L2:
        ContentValues contentvalues2 = new ContentValues();
        contentvalues2.put("ordertime", order.getOrderTime());
        contentvalues2.put("tableName", order.getTableName());
        contentvalues2.put("tableid", Long.valueOf(order.getTableId()));
        contentvalues2.put("customerId", Long.valueOf(order.getCustomerId()));
        contentvalues2.put("personnum", Integer.valueOf(order.getPersonNum()));
        contentvalues2.put("status", Integer.valueOf(order.getStatus()));
        contentvalues2.put("orderNum", order.getOrderNum());
        contentvalues2.put("waiterName", order.getWaiterName());
        contentvalues2.put("remark", order.getKitchenRemark());
        long l1 = a.insert("rest_order", null, contentvalues2);
        order.setId(l1);
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            OrderItem orderitem = (OrderItem)iterator.next();
            ContentValues contentvalues3 = new ContentValues();
            contentvalues3.put("orderId", Long.valueOf(l1));
            contentvalues3.put("categoryName", orderitem.getCategoryName());
            contentvalues3.put("itemId", Long.valueOf(orderitem.getItemId()));
            contentvalues3.put("itemName", orderitem.getItemName());
            contentvalues3.put("qty", Integer.valueOf(orderitem.getQty()));
            contentvalues3.put("price", Double.valueOf(orderitem.getItemPrice()));
            contentvalues3.put("cost", Double.valueOf(orderitem.getItemCost()));
            contentvalues3.put("remark", orderitem.getRemark());
            contentvalues3.put("ordertime", orderitem.getStartTime());
            contentvalues3.put("status", Integer.valueOf(orderitem.getStatus()));
            contentvalues3.put("discountAmt", Double.valueOf(orderitem.getDiscountAmt()));
            contentvalues3.put("discountName", orderitem.getDiscountName());
            long l2 = a.insert("rest_order_item", null, contentvalues3);
            a.execSQL((new StringBuilder("UPDATE rest_item_qty SET qty= ( MAX(0, qty-")).append(orderitem.getQty()).append(")) WHERE itemId=").append(orderitem.getItemId()).toString());
            Iterator iterator1 = orderitem.getOrderModifiers().iterator();
            while (iterator1.hasNext()) 
            {
                OrderModifier ordermodifier = (OrderModifier)iterator1.next();
                ContentValues contentvalues4 = new ContentValues();
                contentvalues4.put("orderId", Long.valueOf(l1));
                contentvalues4.put("itemId", Long.valueOf(orderitem.getItemId()));
                contentvalues4.put("orderItemId", Long.valueOf(l2));
                contentvalues4.put("qty", Integer.valueOf(ordermodifier.getQty()));
                contentvalues4.put("modifierName", ordermodifier.getModifierName());
                contentvalues4.put("type", Integer.valueOf(ordermodifier.getType()));
                contentvalues4.put("price", Double.valueOf(ordermodifier.getModifierPrice()));
                contentvalues4.put("cost", Double.valueOf(ordermodifier.getModifierCost()));
                a.insert("rest_order_modifier", null, contentvalues4);
            }
        }

        break MISSING_BLOCK_LABEL_901;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
        a.update("rest_customer", contentvalues1, (new StringBuilder("rowid=")).append(l).toString(), null);
          goto _L3
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
    }

    public final void b()
    {
        a.beginTransaction();
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("isOpen", Integer.valueOf(0));
        a.update("rest_table", contentvalues, null, null);
        a.delete("rest_order", null, null);
        a.delete("rest_order_item", null, null);
        a.delete("rest_order_modifier", null, null);
        a.delete("rest_order_payment", null, null);
        a.delete("rest_split_bill", null, null);
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
    }

    public final void b(Order order)
    {
        List list = order.getOrderPayments();
        a.beginTransaction();
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("status", Integer.valueOf(1));
        contentvalues.put("endtime", order.getEndTime());
        contentvalues.put("cashierName", order.getCashierName());
        contentvalues.put("discountAmt", Double.valueOf(order.getDiscountAmt()));
        contentvalues.put("discountReason", order.getDiscountReason());
        contentvalues.put("receiptNote", order.getReceiptNote());
        contentvalues.put("tax1Amt", Double.valueOf(order.getTax1Amt()));
        contentvalues.put("tax2Amt", Double.valueOf(order.getTax2Amt()));
        contentvalues.put("tax1Name", order.getTax1Name());
        contentvalues.put("tax2Name", order.getTax2Name());
        contentvalues.put("serviceAmt", Double.valueOf(order.getServiceAmt()));
        contentvalues.put("gratuity", Double.valueOf(order.getGratuity()));
        contentvalues.put("subtotal", Double.valueOf(order.getSubTotal()));
        contentvalues.put("amount", Double.valueOf(order.getAmount()));
        contentvalues.put("customerId", Long.valueOf(order.getCustomerId()));
        contentvalues.put("customerName", order.getCustomerName());
        a.update("rest_order", contentvalues, (new StringBuilder("rowid=")).append(order.getId()).toString(), null);
        ContentValues contentvalues3;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); a.insert("rest_order_payment", null, contentvalues3))
        {
            OrderPayment orderpayment = (OrderPayment)iterator.next();
            contentvalues3 = new ContentValues();
            contentvalues3.put("orderid", Long.valueOf(orderpayment.getOrderId()));
            contentvalues3.put("amount", Double.valueOf(orderpayment.getAmount()));
            contentvalues3.put("paidAmt", Double.valueOf(orderpayment.getPaid()));
            contentvalues3.put("changeAmt", Double.valueOf(orderpayment.getChangeAmt()));
            contentvalues3.put("paymentTime", orderpayment.getPaymentTime());
            contentvalues3.put("paymentMethodName", orderpayment.getPaymentMethodName());
            contentvalues3.put("paymentMethodType", Integer.valueOf(orderpayment.getPaymentMethodType()));
            contentvalues3.put("cashierName", orderpayment.getCashierName());
        }

        break MISSING_BLOCK_LABEL_436;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
        ContentValues contentvalues1 = new ContentValues();
        contentvalues1.put("endtime", order.getEndTime());
        a.update("rest_order_item", contentvalues1, (new StringBuilder("orderid=")).append(order.getId()).toString(), null);
        ContentValues contentvalues2 = new ContentValues();
        contentvalues2.put("isOpen", Integer.valueOf(0));
        a.update("rest_table", contentvalues2, (new StringBuilder("rowid=")).append(order.getTableId()).toString(), null);
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
    }

    public final void c(Order order)
    {
        a.beginTransaction();
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("isOpen", Integer.valueOf(0));
        a.update("rest_table", contentvalues, (new StringBuilder("rowid=")).append(order.getTableId()).toString(), null);
        ContentValues contentvalues1 = new ContentValues();
        contentvalues1.put("status", Integer.valueOf(2));
        contentvalues1.put("endtime", order.getEndTime());
        contentvalues1.put("cancelReason", order.getCancelReason());
        contentvalues1.put("cancelPerson", order.getCancelPerson());
        contentvalues1.put("cashierName", order.getCashierName());
        contentvalues1.put("subtotal", Double.valueOf(order.getSubTotal()));
        contentvalues1.put("amount", Double.valueOf(order.getAmount()));
        a.update("rest_order", contentvalues1, (new StringBuilder("rowid=")).append(order.getId()).toString(), null);
        ContentValues contentvalues2 = new ContentValues();
        contentvalues2.put("status", Integer.valueOf(1));
        contentvalues2.put("endtime", order.getEndTime());
        a.update("rest_order_item", contentvalues2, (new StringBuilder("orderid=")).append(order.getId()).toString(), null);
        String s = (new StringBuilder("select qty, itemId from rest_order_item where orderId=")).append(order.getId()).toString();
        Cursor cursor = a.rawQuery(s, null);
        if (cursor.moveToFirst())
        {
            do
            {
                a.execSQL((new StringBuilder("UPDATE rest_item_qty SET qty= ( MAX(0, qty+")).append(cursor.getInt(0)).append(")) WHERE itemId=").append(cursor.getLong(1)).toString());
            } while (cursor.moveToNext());
        }
        cursor.close();
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
    }
}
