// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.g;

import android.content.Context;
import com.aadhk.restpos.b.b;
import com.aadhk.restpos.b.e;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.i;
import com.aadhk.restpos.f.bd;
import com.aadhk.restpos.util.r;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class o
{

    private Context a;
    private r b;
    private bd c;
    private com.aadhk.restpos.b.o d;
    private e e;
    private b f;
    private i g;

    public o(Context context)
    {
        a = context;
        b = new r(context);
        c = new bd(context);
        android.database.sqlite.SQLiteDatabase sqlitedatabase = com.aadhk.restpos.b.f.a().b();
        d = new com.aadhk.restpos.b.o(sqlitedatabase);
        e = new e(sqlitedatabase);
        f = new b(sqlitedatabase);
        g = new i(sqlitedatabase);
    }

    public final List a()
    {
        return f.b();
    }

    public final List a(long l, boolean flag, double d1, double d2, 
            double d3, int j)
    {
        return g.a(l, flag, d1, d2, d3, j);
    }

    public final Map a(long l)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(l);
        } else
        {
            List list = d.e(l);
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }

    public final Map b(long l)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.b(l);
        } else
        {
            List list = d.f(l);
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }

    public final Map c(long l)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.c(l);
        } else
        {
            com.aadhk.restpos.bean.Customer customer = e.a(l);
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", customer);
            return hashmap;
        }
    }
}
