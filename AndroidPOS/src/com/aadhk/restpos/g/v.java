// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.g;

import android.content.Context;
import com.aadhk.restpos.b.e;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.o;
import com.aadhk.restpos.b.p;
import com.aadhk.restpos.b.q;
import com.aadhk.restpos.bean.Customer;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.f.bx;
import com.aadhk.restpos.util.r;
import java.util.HashMap;
import java.util.Map;

public final class v
{

    private Context a;
    private r b;
    private bx c;
    private o d;
    private q e;
    private p f;
    private e g;

    public v(Context context)
    {
        a = context;
        b = new r(context);
        c = new bx(context);
        android.database.sqlite.SQLiteDatabase sqlitedatabase = com.aadhk.restpos.b.f.a().b();
        d = new o(sqlitedatabase);
        e = new q(sqlitedatabase);
        f = new p(sqlitedatabase);
        g = new e(sqlitedatabase);
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

    public final Map a(Order order)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(order);
        } else
        {
            java.util.List list = e.a(order.getId());
            java.util.List list1 = f.a(order.getId());
            order.setOrderPayments(list);
            order.setOrderItems(list1);
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", order);
            return hashmap;
        }
    }

    public final Map a(String s, String s1, String s2, String s3)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(s, s1, s2, s3);
        } else
        {
            java.util.List list = d.a(s, s1, s2, s3);
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }

    public final Customer b(long l)
    {
        return g.a(l);
    }
}
