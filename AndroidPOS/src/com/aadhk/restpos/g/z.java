// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.g;

import android.content.Context;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.x;
import com.aadhk.restpos.bean.ServiceFee;
import com.aadhk.restpos.f.cl;
import com.aadhk.restpos.util.r;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class z
{

    private r a;
    private x b;
    private cl c;

    public z(Context context)
    {
        a = new r(context);
        c = new cl(context);
        b = new x(f.a().b());
    }

    public final Map a()
    {
        HashMap hashmap = new HashMap();
        if (a.v())
        {
            return c.a();
        } else
        {
            List list = b.a();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }

    public final Map a(int i)
    {
        HashMap hashmap = new HashMap();
        if (a.v())
        {
            return c.a(i);
        } else
        {
            b.a(i);
            List list = b.a();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }

    public final Map a(ServiceFee servicefee)
    {
        HashMap hashmap = new HashMap();
        if (a.v())
        {
            return c.b(servicefee);
        } else
        {
            b.b(servicefee);
            List list = b.a();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }

    public final List b()
    {
        return b.a();
    }

    public final Map b(ServiceFee servicefee)
    {
        HashMap hashmap = new HashMap();
        if (a.v())
        {
            return c.a(servicefee);
        } else
        {
            b.a(servicefee);
            List list = b.a();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }
}
