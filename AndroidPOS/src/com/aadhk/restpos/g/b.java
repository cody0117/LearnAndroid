// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.g;

import android.content.Context;
import com.aadhk.restpos.b.d;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.Currency;
import com.aadhk.restpos.util.r;
import java.util.HashMap;
import java.util.Map;

public final class b
{

    private Context a;
    private r b;
    private com.aadhk.restpos.f.b c;
    private d d;

    public b(Context context)
    {
        a = context;
        b = new r(context);
        c = new com.aadhk.restpos.f.b(context);
        d = new d(f.a().b());
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

    public final Map a(Currency currency)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.b(currency);
        } else
        {
            d.b(currency);
            java.util.List list = d.a();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }

    public final Map b(Currency currency)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(currency);
        } else
        {
            d.a(currency);
            java.util.List list = d.a();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }
}
