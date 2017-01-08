// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.g;

import android.content.Context;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.s;
import com.aadhk.restpos.bean.PriceSchedule;
import com.aadhk.restpos.f.bu;
import com.aadhk.restpos.util.r;
import java.util.HashMap;
import java.util.Map;

public final class t
{

    private Context a;
    private r b;
    private bu c;
    private s d;

    public t(Context context)
    {
        a = context;
        b = new r(context);
        c = new bu(context);
        d = new s(f.a().b());
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

    public final Map a(PriceSchedule priceschedule)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(priceschedule);
        } else
        {
            d.a(priceschedule);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map b(PriceSchedule priceschedule)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.b(priceschedule);
        } else
        {
            d.b(priceschedule);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }
}
