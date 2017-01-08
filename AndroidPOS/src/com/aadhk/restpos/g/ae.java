// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.g;

import android.content.Context;
import com.aadhk.restpos.b.ac;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.User;
import com.aadhk.restpos.f.dg;
import com.aadhk.restpos.util.r;
import java.util.HashMap;
import java.util.Map;

public final class ae
{

    private Context a;
    private r b;
    private dg c;
    private ac d;

    public ae(Context context)
    {
        a = context;
        b = new r(context);
        c = new dg(context);
        d = new ac(f.a().b());
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

    public final Map a(User user)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.b(user);
        } else
        {
            d.b(user);
            java.util.List list = d.a();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }

    public final Map a(String s)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(s);
        } else
        {
            boolean flag = d.b(s);
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", Boolean.valueOf(flag));
            return hashmap;
        }
    }

    public final Map b(User user)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(user);
        } else
        {
            d.a(user);
            java.util.List list = d.a();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }
}
