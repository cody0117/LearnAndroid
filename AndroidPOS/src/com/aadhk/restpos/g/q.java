// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.g;

import android.content.Context;
import android.content.res.Resources;
import com.aadhk.restpos.b.a;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.CashRegister;
import com.aadhk.restpos.bean.ReportItem;
import com.aadhk.restpos.f.bi;
import com.aadhk.restpos.util.m;
import com.aadhk.restpos.util.r;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class q
{

    private Context a;
    private r b;
    private bi c;
    private a d;

    public q(Context context)
    {
        a = context;
        b = new r(context);
        c = new bi(context);
        d = new a(f.a().b());
    }

    public final Map a()
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.b();
        } else
        {
            hashmap.put("serviceLastTime", d.a(null));
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map a(long l)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(l);
        } else
        {
            d.a(l);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map a(Context context, int i)
    {
        HashMap hashmap = new HashMap();
        ArrayList arraylist = new ArrayList();
        double d1 = 0.0D;
        double d2 = 0.0D;
        double d3 = 0.0D;
        double d4 = 0.0D;
        double d5 = 0.0D;
        if (b.v())
        {
            Object obj = c.a();
            String s;
            String s1;
            String s2;
            double d6;
            double d7;
            double d8;
            String s3;
            String s4;
            double d9;
            double d10;
            double d11;
            double d12;
            double d13;
            ReportItem reportitem;
            ReportItem reportitem1;
            ReportItem reportitem2;
            ReportItem reportitem3;
            ReportItem reportitem4;
            ReportItem reportitem5;
            ReportItem reportitem6;
            String s5;
            double d14;
            double d15;
            double d16;
            double d17;
            double d18;
            double d19;
            String s6;
            String s7;
            String s8;
            String s9;
            double d20;
            if ("1".equals((String)((Map) (obj)).get("serviceStatus")))
            {
                s6 = (String)((Map) (obj)).get("serviceLastTime");
                s7 = (String)((Map) (obj)).get("serviceSencondLastTime");
                d19 = ((Double)((Map) (obj)).get("serviceStartAmount")).doubleValue();
                d18 = ((Double)((Map) (obj)).get("servicePayingAmount")).doubleValue();
                d17 = ((Double)((Map) (obj)).get("servicePayoutAmount")).doubleValue();
                d16 = ((Double)((Map) (obj)).get("serviceOrdersTotalAmount")).doubleValue();
                d15 = ((Double)((Map) (obj)).get("serviceNextAmount")).doubleValue();
            } else
            {
                d15 = d5;
                d16 = d4;
                d17 = d3;
                d18 = d2;
                d19 = d1;
                s6 = null;
                s7 = null;
            }
            s8 = s7;
            s9 = s6;
            d6 = d19;
            d7 = d15;
            s3 = s9;
            d8 = d18;
            s4 = s8;
            d20 = d16;
            d11 = d17;
            d10 = d20;
        } else
        {
            s = d.a(null);
            s1 = null;
            if (s != null)
            {
                s5 = d.a(s);
                if (s5 != null)
                {
                    d14 = d.a(0, s5);
                } else
                {
                    d14 = d.a(-1, s);
                }
                d2 = d.a(s5, s, 1);
                d3 = d.a(s5, s, 2);
                d4 = d.b(s5, s);
                d5 = d.a(0, s);
                d1 = d14;
                s1 = s5;
            }
            hashmap.put("serviceStatus", "1");
            s2 = s1;
            d6 = d1;
            d7 = d5;
            d8 = d2;
            s3 = s;
            s4 = s2;
            obj = hashmap;
            d9 = d3;
            d10 = d4;
            d11 = d9;
        }
        d12 = m.a(d6, d8, d11, d10, i);
        d13 = m.c(d12, d7, i);
        reportitem = new ReportItem();
        reportitem.setName(context.getResources().getString(0x7f08011b));
        reportitem.setAmount(d6);
        arraylist.add(reportitem);
        reportitem1 = new ReportItem();
        reportitem1.setName(context.getResources().getString(0x7f08011c));
        reportitem1.setAmount(d10);
        arraylist.add(reportitem1);
        reportitem2 = new ReportItem();
        reportitem2.setName(context.getResources().getString(0x7f080104));
        reportitem2.setAmount(d8);
        arraylist.add(reportitem2);
        reportitem3 = new ReportItem();
        reportitem3.setName(context.getResources().getString(0x7f080105));
        reportitem3.setAmount(d11);
        arraylist.add(reportitem3);
        reportitem4 = new ReportItem();
        reportitem4.setName(context.getResources().getString(0x7f08011d));
        reportitem4.setAmount(d12);
        arraylist.add(reportitem4);
        reportitem5 = new ReportItem();
        reportitem5.setName(context.getResources().getString(0x7f08011e));
        reportitem5.setAmount(-d13);
        arraylist.add(reportitem5);
        reportitem6 = new ReportItem();
        reportitem6.setName(context.getResources().getString(0x7f08011f));
        reportitem6.setAmount(d7);
        arraylist.add(reportitem6);
        ((Map) (obj)).put("serviceLastTime", s3);
        ((Map) (obj)).put("serviceSencondLastTime", s4);
        ((Map) (obj)).put("serviceData", arraylist);
        return ((Map) (obj));
    }

    public final Map a(CashRegister cashregister)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(cashregister);
        } else
        {
            d.a(cashregister);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map a(String s, String s1)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(s, s1);
        } else
        {
            List list = d.a(s, s1);
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }

    public final Map b(CashRegister cashregister)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.b(cashregister);
        } else
        {
            d.b(cashregister);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }
}
