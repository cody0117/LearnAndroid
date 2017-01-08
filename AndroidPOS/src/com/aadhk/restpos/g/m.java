// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.g;

import android.content.Context;
import com.aadhk.restpos.b.aa;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.TableGroup;
import com.aadhk.restpos.f.at;
import com.aadhk.restpos.util.r;
import java.util.HashMap;
import java.util.Map;

public final class m
{

    private Context a;
    private r b;
    private at c;
    private aa d;

    public m(Context context)
    {
        a = context;
        b = new r(context);
        c = new at(a);
        d = new aa(f.a().b());
    }

    private boolean b(int i)
    {
        return d.a(i);
    }

    public final Map a()
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a();
        }
        if (b(0))
        {
            hashmap.put("serviceStatus", "25");
            return hashmap;
        } else
        {
            d.a();
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map a(int i)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(i);
        }
        if (b(i))
        {
            hashmap.put("serviceStatus", "25");
            return hashmap;
        } else
        {
            d.a(i);
            java.util.List list = d.b();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }

    public final Map a(TableGroup tablegroup)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(tablegroup);
        } else
        {
            d.a(tablegroup);
            java.util.List list = d.b();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
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
            java.util.List list = d.b();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }

    public final Map b(TableGroup tablegroup)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(tablegroup);
        } else
        {
            d.b(tablegroup);
            java.util.List list = d.b();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }
}
