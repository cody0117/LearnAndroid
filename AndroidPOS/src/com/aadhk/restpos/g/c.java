// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.g;

import android.content.Context;
import com.aadhk.restpos.b.e;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.Customer;
import com.aadhk.restpos.f.g;
import com.aadhk.restpos.util.r;
import java.util.HashMap;
import java.util.Map;

public final class c
{

    private Context a;
    private r b;
    private g c;
    private e d;

    public c(Context context)
    {
        a = context;
        b = new r(context);
        android.database.sqlite.SQLiteDatabase sqlitedatabase = f.a().b();
        c = new g(context);
        d = new e(sqlitedatabase);
    }

    public final Map a()
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a();
        } else
        {
            java.util.List list = d.a();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }

    public final Map a(int i)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(i);
        } else
        {
            d.a(i);
            java.util.List list = d.a();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }

    public final Map a(Customer customer)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.b(customer);
        } else
        {
            d.b(customer);
            java.util.List list = d.a();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }

    public final Map b(Customer customer)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(customer);
        } else
        {
            d.a(customer);
            java.util.List list = d.a();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }
}
