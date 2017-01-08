// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.g;

import android.content.Context;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.PaymentMethod;
import com.aadhk.restpos.f.bm;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class r
{

    private Context a;
    private com.aadhk.restpos.util.r b;
    private bm c;
    private com.aadhk.restpos.b.r d;

    public r(Context context)
    {
        a = context;
        b = new com.aadhk.restpos.util.r(context);
        c = new bm(context);
        d = new com.aadhk.restpos.b.r(f.a().b());
    }

    public final Map a()
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a();
        } else
        {
            List list = d.a();
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
            List list = d.a();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }

    public final Map a(PaymentMethod paymentmethod)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(paymentmethod);
        } else
        {
            d.a(paymentmethod);
            List list = d.a();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }

    public final List b()
    {
        return d.a();
    }

    public final Map b(PaymentMethod paymentmethod)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.b(paymentmethod);
        } else
        {
            d.b(paymentmethod);
            List list = d.a();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }
}
