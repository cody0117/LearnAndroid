// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.b;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.aadhk.restpos.bean.Report;
import com.aadhk.restpos.bean.ReportItem;
import java.util.ArrayList;
import java.util.List;

public final class u
{

    private final SQLiteDatabase a;

    public u(SQLiteDatabase sqlitedatabase)
    {
        a = sqlitedatabase;
    }

    public final Report a(Context context, String s, String s1, String s2)
    {
        Report report = new Report();
        ArrayList arraylist = new ArrayList();
        String s3 = (new StringBuilder("select rowid, amount from rest_order where endtime>='")).append(s1).append("' and endtime<='").append(s2).append("' and status=1").toString();
        double d = 0.0D;
        double d1 = 0.0D;
        Cursor cursor = a.rawQuery(s3, null);
        if (cursor.moveToFirst())
        {
            do
            {
                d += cursor.getDouble(1);
                SQLiteDatabase sqlitedatabase = a;
                String as[] = new String[1];
                as[0] = (new StringBuilder()).append(cursor.getLong(0)).toString();
                Cursor cursor1 = sqlitedatabase.rawQuery("select rowid, cost*qty from rest_order_item where orderid=? and status!=1", as);
                if (cursor1.moveToFirst())
                {
                    do
                    {
                        d1 += cursor1.getDouble(1);
                        SQLiteDatabase sqlitedatabase1 = a;
                        String as1[] = new String[2];
                        as1[0] = (new StringBuilder()).append(cursor.getLong(0)).toString();
                        as1[1] = (new StringBuilder()).append(cursor1.getLong(0)).toString();
                        Cursor cursor2 = sqlitedatabase1.rawQuery("select type, total(cost*qty)  from rest_order_modifier where orderid=? and orderItemId=?", as1);
                        ReportItem reportitem;
                        ReportItem reportitem1;
                        ReportItem reportitem2;
                        if (cursor2.moveToFirst())
                        {
                            if (cursor2.getInt(0) == 2)
                            {
                                d1 -= cursor2.getDouble(1);
                            } else
                            {
                                d1 += cursor2.getDouble(1);
                            }
                        }
                        cursor2.close();
                    } while (cursor1.moveToNext());
                }
                cursor1.close();
            } while (cursor.moveToNext());
        }
        cursor.close();
        if (d != 0.0D)
        {
            reportitem = new ReportItem();
            reportitem.setName(context.getString(0x7f0801f9));
            reportitem.setAmount(d);
            arraylist.add(reportitem);
            reportitem1 = new ReportItem();
            reportitem1.setName(context.getString(0x7f0801fd));
            reportitem1.setAmount(d1);
            arraylist.add(reportitem1);
            reportitem2 = new ReportItem();
            reportitem2.setName(context.getString(0x7f0801fe));
            reportitem2.setAmount(d - d1);
            arraylist.add(reportitem2);
        }
        report.setId(15);
        report.setName(s);
        report.setReportItems(arraylist);
        return report;
    }

    public final Report a(String s, String s1, String s2)
    {
        Report report = new Report();
        ArrayList arraylist = new ArrayList();
        String s3 = (new StringBuilder("select total(amount),count(*), cashierName from rest_order where endtime>='")).append(s1).append("' and endtime<='").append(s2).append("' and status=1 group by cashierName order by cashierName").toString();
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
        report.setName(s);
        report.setReportItems(arraylist);
        return report;
    }

    public final Report a(String s, String s1, String s2, String s3)
    {
        Report report = new Report();
        ArrayList arraylist = new ArrayList();
        String s4 = (new StringBuilder(" where paymentTime>='")).append(s2).append("' and paymentTime<='").append(s3).append("'").toString();
        if (!TextUtils.isEmpty(null))
        {
            s4 = (new StringBuilder()).append(s4).append(" and cashierName='").append(null).append("'").toString();
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
                reportitem1.setName(s1);
                reportitem1.setAmount(d);
                reportitem1.setCount(i);
                arraylist.add(reportitem1);
            }
        }
        cursor.close();
        report.setId(3);
        report.setName(s);
        report.setReportItems(arraylist);
        return report;
    }

    public final Report a(String s, String as[], String s1, String s2, String s3)
    {
        Report report = new Report();
        ArrayList arraylist = new ArrayList();
        String s4 = (new StringBuilder(" where endtime>='")).append(s2).append("' and endtime<='").append(s3).append("' and status=1").toString();
        if (!TextUtils.isEmpty(null))
        {
            s4 = (new StringBuilder()).append(s4).append(" and cashierName='").append(null).append("'").toString();
        }
        String s5 = (new StringBuilder("select total(amount),total(discountAmt),total(serviceAmt),total(gratuity),total(tax1Amt),total(tax2Amt),total(tax3Amt) from rest_order")).append(s4).toString();
        double d = 0.0D;
        List list = a(s1, s2, s3, true);
        if (!list.isEmpty())
        {
            d = ((ReportItem)list.get(-1 + list.size())).getAmount();
        }
        Cursor cursor = a.rawQuery(s5, null);
        if (cursor.moveToFirst())
        {
            double d1 = cursor.getDouble(0);
            if (d > 0.0D || d1 > 0.0D)
            {
                ReportItem reportitem = new ReportItem();
                reportitem.setName(as[0]);
                reportitem.setAmount(d1);
                arraylist.add(reportitem);
                ReportItem reportitem1 = new ReportItem();
                reportitem1.setName(as[1]);
                reportitem1.setAmount(d);
                arraylist.add(reportitem1);
                ReportItem reportitem2 = new ReportItem();
                reportitem2.setName(as[2]);
                reportitem2.setAmount(cursor.getDouble(1));
                arraylist.add(reportitem2);
                ReportItem reportitem3 = new ReportItem();
                reportitem3.setName(as[3]);
                reportitem3.setAmount(cursor.getDouble(2));
                arraylist.add(reportitem3);
                ReportItem reportitem4 = new ReportItem();
                reportitem4.setName(as[4]);
                reportitem4.setAmount(cursor.getDouble(3));
                arraylist.add(reportitem4);
                ReportItem reportitem5 = new ReportItem();
                reportitem5.setName(as[5]);
                reportitem5.setAmount(cursor.getDouble(4));
                arraylist.add(reportitem5);
                ReportItem reportitem6 = new ReportItem();
                reportitem6.setName(as[6]);
                reportitem6.setAmount(cursor.getDouble(5));
                arraylist.add(reportitem6);
                ReportItem reportitem7 = new ReportItem();
                reportitem7.setName(as[7]);
                reportitem7.setAmount(cursor.getDouble(6));
                arraylist.add(reportitem7);
            }
        }
        cursor.close();
        report.setId(10);
        report.setName(s);
        report.setReportItems(arraylist);
        return report;
    }

    public final Report a(String as[], String s, String s1, String s2)
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
                reportitem.setName(as[0]);
                reportitem.setCount(i);
                arraylist.add(reportitem);
                ReportItem reportitem1 = new ReportItem();
                reportitem1.setId(0L);
                reportitem1.setName(as[1]);
                reportitem1.setAmount(cursor.getDouble(1) / (double)cursor.getInt(0));
                arraylist.add(reportitem1);
                ReportItem reportitem2 = new ReportItem();
                reportitem2.setId(1L);
                reportitem2.setName(as[2]);
                reportitem2.setCount(cursor.getInt(2));
                arraylist.add(reportitem2);
                ReportItem reportitem3 = new ReportItem();
                reportitem3.setId(0L);
                reportitem3.setName(as[3]);
                reportitem3.setAmount(cursor.getDouble(1) / (double)cursor.getInt(2));
                arraylist.add(reportitem3);
            }
        }
        cursor.close();
        report.setId(14);
        report.setName(s);
        report.setReportItems(arraylist);
        return report;
    }

    public final List a(String s, String s1, String s2, boolean flag)
    {
        String s3;
        String s4;
        String s5;
        ArrayList arraylist;
        Cursor cursor;
        if (flag)
        {
            s3 = " and a.status=1";
        } else
        {
            s3 = " and a.status!=1";
        }
        s4 = (new StringBuilder("select itemName, sum(qty) as totalCount, sum(price*qty) as totalAmount from rest_order_item as a, rest_order as b where a.orderid=b.rowid and (b.status=1 or b.status=2) ")).append(s3).append(" and b.endtime between '").append(s1).append("' and '").append(s2).append("'  group by itemName order by itemName").toString();
        s5 = (new StringBuilder("select a.rowId from rest_order_item as a, rest_order as b where a.orderid=b.rowid and b.status=1")).append(s3).append(" and itemName=? ").append(s3).append(" and b.endtime between '").append(s1).append("' and '").append(s2).append("'").toString();
        arraylist = new ArrayList();
        cursor = a.rawQuery(s4, null);
        if (cursor.moveToFirst())
        {
            double d = 0.0D;
            int i = 0;
            do
            {
                String s6 = cursor.getString(0);
                int j = cursor.getInt(1);
                double d1 = cursor.getDouble(2);
                Cursor cursor1 = a.rawQuery(s5, new String[] {
                    s6
                });
                if (cursor1.moveToFirst())
                {
                    do
                    {
                        long l = cursor1.getLong(0);
                        SQLiteDatabase sqlitedatabase = a;
                        String as[] = new String[1];
                        as[0] = (new StringBuilder()).append(l).toString();
                        Cursor cursor2 = sqlitedatabase.rawQuery("select type, sum(price*qty) as totalAmount from rest_order_modifier where orderItemId=?", as);
                        ReportItem reportitem;
                        ReportItem reportitem1;
                        if (cursor2.moveToFirst())
                        {
                            do
                            {
                                if (cursor2.getInt(0) == 2)
                                {
                                    d1 -= cursor2.getDouble(1);
                                } else
                                {
                                    d1 += cursor2.getDouble(1);
                                }
                            } while (cursor2.moveToNext());
                        }
                        cursor2.close();
                    } while (cursor1.moveToNext());
                }
                cursor1.close();
                reportitem = new ReportItem();
                reportitem.setName(s6);
                reportitem.setCount(j);
                reportitem.setAmount(d1);
                d += d1;
                i += j;
                arraylist.add(reportitem);
            } while (cursor.moveToNext());
            if (i > 0)
            {
                reportitem1 = new ReportItem();
                reportitem1.setName(s);
                reportitem1.setAmount(d);
                reportitem1.setCount(i);
                arraylist.add(reportitem1);
            }
        }
        cursor.close();
        return arraylist;
    }

    public final Report b(Context context, String s, String s1, String s2)
    {
        Report report = new Report();
        ArrayList arraylist = new ArrayList();
        String s3 = (new StringBuilder("select total(amount),count(*) from rest_order where endtime>='")).append(s1).append("' and endtime<='").append(s2).append("' and status=1 and tableId>0").toString();
        String s4 = (new StringBuilder("select total(amount),count(*), tableId,tableName from rest_order where endtime>='")).append(s1).append("' and endtime<='").append(s2).append("' and status=1 and tableId<=0 group by tableName order by tableId desc").toString();
        Cursor cursor = a.rawQuery(s3, null);
        if (cursor.moveToFirst())
        {
            double d1 = cursor.getDouble(0);
            if (d1 != 0.0D)
            {
                ReportItem reportitem1 = new ReportItem();
                reportitem1.setAmount(d1);
                reportitem1.setCount(cursor.getInt(1));
                reportitem1.setName(context.getString(0x7f080208));
                arraylist.add(reportitem1);
            }
        }
        cursor.close();
        Cursor cursor1 = a.rawQuery(s4, null);
        if (cursor1.moveToFirst())
        {
            do
            {
                double d = cursor1.getDouble(0);
                ReportItem reportitem = new ReportItem();
                reportitem.setAmount(d);
                reportitem.setCount(cursor1.getInt(1));
                if (cursor1.getInt(2) == 0)
                {
                    reportitem.setName(context.getString(0x7f080367));
                } else
                if (cursor1.getInt(2) == -1)
                {
                    reportitem.setName(context.getString(0x7f0800d7));
                } else
                {
                    reportitem.setName(context.getString(0x7f0800d8));
                }
                arraylist.add(reportitem);
            } while (cursor1.moveToNext());
        }
        cursor1.close();
        report.setName(s);
        report.setReportItems(arraylist);
        return report;
    }

    public final List b(String s, String s1, String s2)
    {
        ArrayList arraylist = new ArrayList();
        String s3 = (new StringBuilder("select categoryName, sum(a.qty) as qty, sum(a.price*a.qty) as amt from rest_order_item as a, rest_order as b where a.orderid=b.rowid and b.status=1 and a.status!=1 and b.endtime between '")).append(s).append("' and '").append(s1).append("'  group by categoryName order by ").append(s2).toString();
        String s4 = (new StringBuilder("select a.rowId from rest_order_item as a, rest_order as b where a.orderid=b.rowid and b.status=1 and a.status!=1 and categoryName=? and b.endtime between '")).append(s).append("' and '").append(s1).append("'").toString();
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
                        Cursor cursor2 = sqlitedatabase.rawQuery("select type, sum(price*qty) as totalAmount from rest_order_modifier where orderItemId=?", as);
                        ReportItem reportitem;
                        if (cursor2.moveToFirst())
                        {
                            do
                            {
                                if (cursor2.getInt(0) == 2)
                                {
                                    d -= cursor2.getDouble(1);
                                } else
                                {
                                    d += cursor2.getDouble(1);
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

    public final List c(String s, String s1, String s2)
    {
        String s3 = (new StringBuilder("select modifierName, sum(supp.qty) as totalCount, sum(supp.price*supp.qty) as totalAmount, supp.type from rest_order as sale, rest_order_item as item, rest_order_modifier as supp where sale.rowid=item.orderId and sale.status=1 and item.rowid=supp.orderItemId and sale.endtime between '")).append(s1).append("' and '").append(s2).append("' group by modifierName order by modifierName").toString();
        ArrayList arraylist = new ArrayList();
        Cursor cursor = a.rawQuery(s3, null);
        if (cursor.moveToFirst())
        {
            double d = 0.0D;
            int i = 0;
            do
            {
                String s4 = cursor.getString(0);
                int j = cursor.getInt(1);
                double d1 = cursor.getDouble(2);
                if (cursor.getInt(3) == 2)
                {
                    d1 *= -1D;
                }
                ReportItem reportitem = new ReportItem();
                reportitem.setName(s4);
                reportitem.setCount(j);
                reportitem.setAmount(d1);
                d += d1;
                i += j;
                arraylist.add(reportitem);
            } while (cursor.moveToNext());
            if (i > 0)
            {
                ReportItem reportitem1 = new ReportItem();
                reportitem1.setName(s);
                reportitem1.setAmount(d);
                reportitem1.setCount(i);
                arraylist.add(reportitem1);
            }
        }
        cursor.close();
        return arraylist;
    }
}
