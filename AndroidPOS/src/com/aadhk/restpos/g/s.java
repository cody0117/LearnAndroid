// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.g;

import android.content.Context;
import com.aadhk.restpos.b.ab;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.h;
import com.aadhk.restpos.b.o;
import com.aadhk.restpos.b.p;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.f.br;
import com.aadhk.restpos.util.r;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class s
{

    private Context a;
    private r b;
    private br c;
    private o d;
    private ab e;
    private h f;
    private p g;

    public s(Context context)
    {
        a = context;
        b = new r(context);
        c = new br(context);
        android.database.sqlite.SQLiteDatabase sqlitedatabase = com.aadhk.restpos.b.f.a().b();
        d = new o(sqlitedatabase);
        e = new ab(sqlitedatabase);
        f = new h(sqlitedatabase);
        g = new p(sqlitedatabase);
    }

    public final List a()
    {
        return f.a();
    }

    public final Map a(long l)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(l, b.m());
        }
        List list;
        if (b.m())
        {
            list = g.b(l);
        } else
        {
            list = g.a(l);
        }
        hashmap.put("serviceData", list);
        hashmap.put("serviceStatus", "1");
        return hashmap;
    }

    public final Map a(long l, long l1)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(l, l1);
        } else
        {
            hashmap.put("serviceData", g.b(l, l1));
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
        }
        if (order.getSplitType() == 0)
        {
            e.b(order);
        } else
        {
            e.a(order);
        }
        hashmap.put("serviceStatus", "1");
        return hashmap;
    }

    public final Map b(long l)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(l);
        } else
        {
            d.g(l);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }
}
