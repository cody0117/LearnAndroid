// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.g;

import android.content.Context;
import com.aadhk.restpos.b.aa;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.o;
import com.aadhk.restpos.b.z;
import com.aadhk.restpos.bean.Table;
import com.aadhk.restpos.f.ax;
import com.aadhk.restpos.util.r;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class n
{

    private Context a;
    private r b;
    private ax c;
    private z d;
    private aa e;
    private o f;

    public n(Context context)
    {
        a = context;
        b = new r(context);
        c = new ax(a);
        android.database.sqlite.SQLiteDatabase sqlitedatabase = com.aadhk.restpos.b.f.a().b();
        d = new z(sqlitedatabase);
        e = new aa(sqlitedatabase);
        f = new o(sqlitedatabase);
    }

    private boolean b(long l)
    {
        return f.d(l);
    }

    public final Map a()
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            Map map = c.a();
            if ("1".equals((String)map.get("serviceStatus")))
            {
                d.a();
            }
            return map;
        }
        if (b(0L))
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

    public final Map a(long l)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            Map map = c.a(l);
            if ("1".equals((String)map.get("serviceStatus")))
            {
                d.a(l);
            }
            return map;
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

    public final Map a(Table table)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            Map map = c.a(table);
            if ("1".equals((String)map.get("serviceStatus")))
            {
                d.a(table);
            }
            return map;
        } else
        {
            d.a(table);
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
            Map map = c.a(list);
            if ("1".equals((String)map.get("serviceStatus")))
            {
                d.a(list);
            }
            return map;
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
            Map map1 = c.a(map);
            if ("1".equals((String)map1.get("serviceStatus")))
            {
                d.a(map);
            }
            return map1;
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

    public final Map b(Table table)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            Map map = c.a(table);
            if ("1".equals((String)map.get("serviceStatus")))
            {
                d.b(table);
            }
            return map;
        } else
        {
            d.b(table);
            List list = d.b();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }

    public final Map c()
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.c();
        } else
        {
            List list = e.b();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }
}
