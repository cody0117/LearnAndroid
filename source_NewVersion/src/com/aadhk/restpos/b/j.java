// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.b;

import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.aadhk.restpos.bean.Modifier;
import com.aadhk.restpos.bean.ModifierGroup;
import com.aadhk.restpos.bean.ReportItem;
import com.aadhk.restpos.f.h;
import java.util.ArrayList;
import java.util.List;

public final class j
{

    private final SQLiteDatabase a;

    public j(SQLiteDatabase sqlitedatabase)
    {
        a = sqlitedatabase;
    }

    public final List a(Context context, String s, String s1)
    {
        String s2 = (new StringBuilder("select supplementName, sum(qty) as totalCount, sum(supp.price*qty) as totalAmount, supp.type from rest_order as sale, rest_orderitem as item, rest_orderSupplement as supp where sale.rowid=item.orderId and sale.status=1 and item.rowid=supp.orderItemId and sale.endtime between '")).append(s).append("' and '").append(s1).append("' group by supplementName order by totalAmount desc").toString();
        ArrayList arraylist = new ArrayList();
        Cursor cursor = a.rawQuery(s2, null);
        if (cursor.moveToFirst())
        {
            double d = 0.0D;
            int i = 0;
            do
            {
                String s3 = cursor.getString(0);
                int k = cursor.getInt(1);
                double d1 = cursor.getDouble(2);
                if (cursor.getInt(3) == 2)
                {
                    d1 *= -1D;
                }
                ReportItem reportitem = new ReportItem();
                reportitem.setName(s3);
                reportitem.setCount(k);
                reportitem.setAmount(d1);
                d += d1;
                i += k;
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
        return arraylist;
    }

    public final List a(String s, int i, int k, boolean flag, double d, double d1, int l)
    {
        ArrayList arraylist = new ArrayList();
        Cursor cursor = a.query(false, "rest_modifierGroup", new String[] {
            "rowid as _id", "name"
        }, (new StringBuilder("rowid in (")).append(s).append(")").toString(), null, null, null, " name asc ", null);
        if (cursor.moveToFirst())
        {
            do
            {
                ModifierGroup modifiergroup = new ModifierGroup();
                long l1 = cursor.getLong(0);
                modifiergroup.setName(cursor.getString(1));
                Cursor cursor1 = a.query(false, "rest_modifier", new String[] {
                    "rowid as _id", "name", "price", "type", "qty", "required"
                }, (new StringBuilder("groupId = ")).append(l1).toString(), null, null, null, " type asc ,name asc ", null);
                if (cursor1.moveToFirst())
                {
                    ArrayList arraylist1 = new ArrayList();
                    do
                    {
                        Modifier modifier = new Modifier();
                        modifier.setId(cursor1.getLong(0));
                        modifier.setName(cursor1.getString(1));
                        double d2 = cursor1.getDouble(2);
                        if (flag)
                        {
                            if (i == 1)
                            {
                                d2 = h.a(d2, d, l, false);
                            }
                            if (k == 2)
                            {
                                d2 = h.a(d2, d1, l, false);
                            }
                        }
                        modifier.setPrice(d2);
                        modifier.setType(cursor1.getInt(3));
                        modifier.setQty(cursor1.getInt(4));
                        boolean flag1;
                        if (cursor1.getInt(5) == 1)
                        {
                            flag1 = true;
                        } else
                        {
                            flag1 = false;
                        }
                        modifier.setRequired(flag1);
                        arraylist1.add(modifier);
                        modifiergroup.setModifiers(arraylist1);
                    } while (cursor1.moveToNext());
                }
                cursor1.close();
                arraylist.add(modifiergroup);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final void a(long l)
    {
        a.delete("rest_modifier", (new StringBuilder("rowid=")).append(l).toString(), null);
    }

    public final List b(long l)
    {
        ArrayList arraylist = new ArrayList();
        String as[] = {
            "rowid as _id", "name", "price", "type", "qty", "required"
        };
        Cursor cursor = a.query(false, "rest_modifier", as, (new StringBuilder("groupId=")).append(l).toString(), null, null, null, " type asc ,name asc ", null);
        if (cursor.moveToFirst())
        {
            do
            {
                Modifier modifier = new Modifier();
                modifier.setId(cursor.getLong(0));
                modifier.setName(cursor.getString(1));
                modifier.setPrice(cursor.getDouble(2));
                modifier.setType(cursor.getInt(3));
                modifier.setQty(cursor.getInt(4));
                boolean flag;
                if (cursor.getInt(5) == 1)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                modifier.setRequired(flag);
                arraylist.add(modifier);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }
}
