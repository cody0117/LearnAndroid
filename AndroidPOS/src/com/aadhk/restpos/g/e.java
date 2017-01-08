// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.g;

import android.content.Context;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.h;
import com.aadhk.restpos.bean.Discount;
import com.aadhk.restpos.f.o;
import com.aadhk.restpos.util.r;
import java.util.HashMap;
import java.util.Map;

public final class e
{

    private Context a;
    private r b;
    private h c;
    private o d;

    public e(Context context)
    {
        a = context;
        b = new r(context);
        d = new o(context);
        c = new h(f.a().b());
    }

    public final Map a()
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return d.a();
        } else
        {
            java.util.List list = c.a();
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
            return d.a(i);
        } else
        {
            c.a(i);
            java.util.List list = c.a();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }

    public final Map a(Discount discount)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return d.b(discount);
        } else
        {
            c.b(discount);
            java.util.List list = c.a();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }

    public final Map b(Discount discount)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return d.a(discount);
        } else
        {
            c.a(discount);
            java.util.List list = c.a();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }
}
