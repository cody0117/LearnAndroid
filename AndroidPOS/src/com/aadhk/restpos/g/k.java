// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.g;

import android.content.Context;
import com.aadhk.restpos.b.b;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.i;
import com.aadhk.restpos.b.m;
import com.aadhk.restpos.b.p;
import com.aadhk.restpos.b.t;
import com.aadhk.restpos.bean.Item;
import com.aadhk.restpos.f.ai;
import com.aadhk.restpos.util.r;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class k
{

    private Context a;
    private r b;
    private ai c;
    private t d;
    private m e;
    private com.aadhk.restpos.b.k f;
    private b g;
    private i h;
    private p i;

    public k(Context context)
    {
        a = context;
        b = new r(context);
        c = new ai(context);
        android.database.sqlite.SQLiteDatabase sqlitedatabase = com.aadhk.restpos.b.f.a().b();
        d = new t(sqlitedatabase);
        e = new m(sqlitedatabase);
        f = new com.aadhk.restpos.b.k(sqlitedatabase);
        g = new b(sqlitedatabase);
        h = new i(sqlitedatabase);
        i = new p(sqlitedatabase);
    }

    private boolean a(long l, boolean flag)
    {
        return i.a(l, flag);
    }

    public final Map a()
    {
        return d.b();
    }

    public final Map a(long l)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(l);
        }
        if (a(l, true))
        {
            h.a(l);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        } else
        {
            hashmap.put("serviceStatus", "25");
            return hashmap;
        }
    }

    public final Map a(long l, int j)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(l, j);
        } else
        {
            h.a(l, j);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map a(long l, int j, int i1, int j1)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(l, j, i1, j1);
        } else
        {
            h.a(l, j, i1, j1);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map a(long l, String s)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(l, s);
        } else
        {
            h.a(l, s);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map a(Item item)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(item);
        } else
        {
            h.a(item);
            hashmap.put("serviceStatus", "1");
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
            h.a(list);
            hashmap.put("serviceStatus", "1");
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
            h.a(map);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map b()
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.d();
        } else
        {
            hashmap.put("serviceData", e.b());
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map b(long l)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.c(l);
        }
        if (a(l, false))
        {
            h.b(l);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        } else
        {
            hashmap.put("serviceStatus", "25");
            return hashmap;
        }
    }

    public final Map b(long l, String s)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.b(l, s);
        } else
        {
            h.b(l, s);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map b(Item item)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.b(item);
        } else
        {
            h.b(item);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map c()
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.e();
        } else
        {
            hashmap.put("serviceData", f.b());
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map c(long l)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.b(l);
        } else
        {
            List list = h.c(l);
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }

    public final Map d()
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a();
        } else
        {
            List list = g.c();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }

    public final Map e()
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.c();
        } else
        {
            hashmap.put("serviceData", f.a());
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map f()
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.b();
        } else
        {
            List list = e.a();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }
}
