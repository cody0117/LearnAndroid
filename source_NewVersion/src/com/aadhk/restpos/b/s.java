// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.b;

import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.Report;
import com.aadhk.restpos.bean.ReportItem;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.b:
//            n

public final class s
{

    private final SQLiteDatabase a;

    public s(SQLiteDatabase sqlitedatabase)
    {
        a = sqlitedatabase;
    }

    public final Report a(Context context, String s1, String s2)
    {
        Report report = new Report();
        ArrayList arraylist = new ArrayList();
        String s3 = (new StringBuilder(" where endtime>='")).append(s1).append("' and endtime<='").append(s2).append("' and status=1").toString();
        String s4 = (new StringBuilder(" where endtime>='")).append(s1).append("' and endtime<='").append(s2).append("' and status=2").toString();
        if (!TextUtils.isEmpty(null))
        {
            s3 = (new StringBuilder()).append(s3).append(" and cashierName='").append(null).append("'").toString();
            (new StringBuilder()).append(s4).append(" and cashierName='").append(null).append("'");
        }
        String s5 = (new StringBuilder("select total(amount),total(discountAmt),total(serviceAmt),total(tax1Amt),total(tax2Amt) from rest_order")).append(s3).toString();
        List list = (new n(a)).a(context, s1, s2, true);
        double d;
        Cursor cursor;
        if (!list.isEmpty())
        {
            d = ((ReportItem)list.get(-1 + list.size())).getAmount();
        } else
        {
            d = 0.0D;
        }
        cursor = a.rawQuery(s5, null);
        if (cursor.moveToFirst())
        {
            double d1 = cursor.getDouble(0);
            if (d > 0.0D || d1 > 0.0D)
            {
                ReportItem reportitem = new ReportItem();
                reportitem.setName(context.getResources().getString(0x7f0901be));
                reportitem.setAmount(d1);
                arraylist.add(reportitem);
                ReportItem reportitem1 = new ReportItem();
                reportitem1.setName(context.getResources().getString(0x7f0901c1));
                reportitem1.setAmount(d);
                arraylist.add(reportitem1);
                ReportItem reportitem2 = new ReportItem();
                reportitem2.setName(context.getResources().getString(0x7f09025a));
                reportitem2.setAmount(cursor.getDouble(1));
                arraylist.add(reportitem2);
                ReportItem reportitem3 = new ReportItem();
                reportitem3.setName(context.getResources().getString(0x7f0902aa));
                reportitem3.setAmount(cursor.getDouble(2));
                arraylist.add(reportitem3);
                ReportItem reportitem4 = new ReportItem();
                reportitem4.setName(context.getResources().getString(0x7f0901bf));
                reportitem4.setAmount(cursor.getDouble(3));
                arraylist.add(reportitem4);
                ReportItem reportitem5 = new ReportItem();
                reportitem5.setName(context.getResources().getString(0x7f0901c0));
                reportitem5.setAmount(cursor.getDouble(4));
                arraylist.add(reportitem5);
            }
        }
        cursor.close();
        report.setId(10);
        report.setName(context.getResources().getString(0x7f0901bd));
        report.setReportItems(arraylist);
        return report;
    }

    public final Report a(Context context, String s1, String s2, String s3)
    {
        Report report = new Report();
        ArrayList arraylist = new ArrayList();
        String s4 = (new StringBuilder(" where paymentTime>='")).append(s1).append("' and paymentTime<='").append(s2).append("'").toString();
        if (!TextUtils.isEmpty(s3))
        {
            s4 = (new StringBuilder()).append(s4).append(" and cashierName='").append(s3).append("'").toString();
        }
        String s5 = (new StringBuilder("select paymentMethodName, total(amount), count(paymentMethodName) from rest_order_payment")).append(s4).append(" group by paymentMethodName order by paymentMethodType").toString();
        Cursor cursor = a.rawQuery(s5, null);
        if (cursor.moveToFirst())
        {
            double d = 0.0D;
            int i = 0;
            do
            {
                ReportItem reportitem = new ReportItem();
                reportitem.setName(cursor.getString(0));
                reportitem.setAmount(cursor.getDouble(1));
                reportitem.setCount(cursor.getInt(2));
                d += reportitem.getAmount();
                i += reportitem.getCount();
                arraylist.add(reportitem);
            } while (cursor.moveToNext());
            if (i > 0)
            {
                ReportItem reportitem1 = new ReportItem();
                reportitem1.setName(context.getResources().getString(0x7f0901af));
                reportitem1.setAmount(d);
                reportitem1.setCount(i);
                arraylist.add(reportitem1);
            }
        }
        cursor.close();
        report.setId(3);
        report.setName(context.getResources().getString(0x7f0901b0));
        report.setReportItems(arraylist);
        return report;
    }

    public final List a(String s1, String s2)
    {
        ArrayList arraylist = new ArrayList();
        String s3 = (new StringBuilder("select rowid, orderNum, ordertime, endtime, tablename, cancelReason, cancelPerson, amount,  personnum from rest_order where endtime>='")).append(s1).append("' and endtime<='").append(s2).append("' and status=2").toString();
        Cursor cursor = a.rawQuery(s3, null);
        if (cursor.moveToFirst())
        {
            do
            {
                Order order = new Order();
                order.setId(cursor.getLong(0));
                order.setOrderNum(cursor.getString(1));
                order.setStartTime(cursor.getString(2));
                order.setEndTime(cursor.getString(3));
                order.setTableName(cursor.getString(4));
                order.setCancelReason(cursor.getString(5));
                order.setCancelPerson(cursor.getString(6));
                order.setAmount(cursor.getDouble(7));
                order.setPersonNum(cursor.getInt(8));
                arraylist.add(order);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final Report b(Context context, String s1, String s2)
    {
        Report report = new Report();
        ArrayList arraylist = new ArrayList();
        String s3 = (new StringBuilder("select total(amount),count(*), cashierName from rest_order where endtime>='")).append(s1).append("' and endtime<='").append(s2).append("' and status=1 group by cashierName").toString();
        Cursor cursor = a.rawQuery(s3, null);
        if (cursor.moveToFirst())
        {
            do
            {
                double d = cursor.getDouble(0);
                ReportItem reportitem = new ReportItem();
                reportitem.setAmount(d);
                reportitem.setCount(cursor.getInt(1));
                reportitem.setName(cursor.getString(2));
                arraylist.add(reportitem);
            } while (cursor.moveToNext());
        }
        cursor.close();
        report.setName(context.getResources().getString(0x7f0901a1));
        report.setReportItems(arraylist);
        return report;
    }

    public final List b(String s1, String s2)
    {
        ArrayList arraylist = new ArrayList();
        String s3 = (new StringBuilder("select rowid, endtime, cancelReason, cancelPerson from rest_order where endtime>='")).append(s1).append("' and endtime<='").append(s2).append("' and status=4").toString();
        Cursor cursor = a.rawQuery(s3, null);
        if (cursor.moveToFirst())
        {
            do
            {
                Order order = new Order();
                order.setId(cursor.getLong(0));
                order.setEndTime(cursor.getString(1));
                order.setCancelReason(cursor.getString(2));
                order.setCancelPerson(cursor.getString(3));
                arraylist.add(order);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final Report c(Context context, String s1, String s2)
    {
        Report report = new Report();
        ArrayList arraylist = new ArrayList();
        String s3 = (new StringBuilder(" where endtime>='")).append(s1).append("' and endtime<='").append(s2).append("' and status=1").toString();
        if (!TextUtils.isEmpty(null))
        {
            s3 = (new StringBuilder()).append(s3).append(" and cashierName='").append(null).append("'").toString();
        }
        String s4 = (new StringBuilder("select count(*),total(amount), total(personnum)  from rest_order")).append(s3).toString();
        Cursor cursor = a.rawQuery(s4, null);
        if (cursor.moveToFirst())
        {
            int i = cursor.getInt(0);
            if (i > 0)
            {
                ReportItem reportitem = new ReportItem();
                reportitem.setId(1L);
                reportitem.setName(context.getResources().getString(0x7f0901c5));
                reportitem.setCount(i);
                arraylist.add(reportitem);
                ReportItem reportitem1 = new ReportItem();
                reportitem1.setId(0L);
                reportitem1.setName(context.getResources().getString(0x7f0901c6));
                reportitem1.setAmount(cursor.getDouble(1) / (double)cursor.getInt(0));
                arraylist.add(reportitem1);
                ReportItem reportitem2 = new ReportItem();
                reportitem2.setId(1L);
                reportitem2.setName(context.getResources().getString(0x7f0901c7));
                reportitem2.setCount(cursor.getInt(2));
                arraylist.add(reportitem2);
                ReportItem reportitem3 = new ReportItem();
                reportitem3.setId(0L);
                reportitem3.setName(context.getResources().getString(0x7f0901c8));
                reportitem3.setAmount(cursor.getDouble(1) / (double)cursor.getInt(2));
                arraylist.add(reportitem3);
            }
        }
        cursor.close();
        report.setId(14);
        report.setName(context.getResources().getString(0x7f0901a0));
        report.setReportItems(arraylist);
        return report;
    }
}
