// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.g;

import android.content.Context;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.o;
import com.aadhk.restpos.b.p;
import com.aadhk.restpos.b.y;
import com.aadhk.restpos.bean.SplitBill;
import com.aadhk.restpos.f.cs;
import com.aadhk.restpos.f.da;
import com.aadhk.restpos.util.r;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class ab
{

    private Context a;
    private r b;
    private cs c;
    private da d;
    private y e;
    private o f;
    private p g;
    private com.aadhk.restpos.b.ab h;

    public ab(Context context)
    {
        a = context;
        b = new r(context);
        c = new cs(context);
        d = new da(context);
        android.database.sqlite.SQLiteDatabase sqlitedatabase = com.aadhk.restpos.b.f.a().b();
        e = new y(sqlitedatabase);
        f = new o(sqlitedatabase);
        g = new p(sqlitedatabase);
        h = new com.aadhk.restpos.b.ab(sqlitedatabase);
    }

    public final Map a(long l)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(l);
        } else
        {
            hashmap.put("serviceData", e.b(l));
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map a(long l, long l1)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(l, l1);
        } else
        {
            hashmap.put("serviceData", g.b(l, l1));
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map a(long l, long l1, List list, double d1)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(l, l1, list, d1);
        } else
        {
            e.a(l, l1, list, d1);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map a(long l, long l1, boolean flag)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(l, l1, flag);
        } else
        {
            e.a(l, l1, flag);
            hashmap.put("serviceData", e.b(l1));
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map a(SplitBill splitbill)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(splitbill);
        } else
        {
            e.b(splitbill);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map a(SplitBill splitbill, long l)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.b(splitbill);
        } else
        {
            e.a(splitbill);
            hashmap.put("serviceData", e.b(l));
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map a(List list, long l)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(list, l);
        } else
        {
            e.a(list, l);
            hashmap.put("serviceData", e.b(l));
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map b(long l)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.b(l);
        } else
        {
            e.a(l);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }
}
