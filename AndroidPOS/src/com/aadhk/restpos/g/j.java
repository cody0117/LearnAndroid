// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.g;

import android.content.Context;
import com.aadhk.restpos.b.b;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.Category;
import com.aadhk.restpos.f.ac;
import com.aadhk.restpos.util.r;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class j
{

    private Context a;
    private r b;
    private ac c;
    private b d;

    public j(Context context)
    {
        a = context;
        b = new r(context);
        c = new ac(context);
        d = new b(f.a().b());
    }

    private boolean b(long l)
    {
        return d.b(l);
    }

    public final Map a()
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a();
        }
        if (b(0L))
        {
            hashmap.put("serviceStatus", "25");
            return hashmap;
        } else
        {
            d.a();
            List list = d.b();
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
        }
        if (b(l))
        {
            hashmap.put("serviceStatus", "25");
            return hashmap;
        } else
        {
            d.a(l);
            List list = d.b();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }

    public final Map a(Category category)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(category);
        } else
        {
            d.b(category);
            List list = d.b();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }

    public final Map a(List list)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(list);
        } else
        {
            d.a(list);
            List list1 = d.b();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list1);
            return hashmap;
        }
    }

    public final Map a(Map map)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(map);
        } else
        {
            d.a(map);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map b()
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.b();
        } else
        {
            List list = d.b();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }

    public final Map b(Category category)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(category);
        } else
        {
            d.a(category);
            List list = d.b();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }
}
