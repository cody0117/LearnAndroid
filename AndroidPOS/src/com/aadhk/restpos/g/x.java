// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.g;

import android.content.Context;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.v;
import com.aadhk.restpos.b.z;
import com.aadhk.restpos.bean.Reservation;
import com.aadhk.restpos.f.cb;
import com.aadhk.restpos.util.r;
import java.util.HashMap;
import java.util.Map;

public final class x
{

    private Context a;
    private r b;
    private cb c;
    private v d;
    private z e;

    public x(Context context)
    {
        a = context;
        b = new r(context);
        c = new cb(context);
        android.database.sqlite.SQLiteDatabase sqlitedatabase = f.a().b();
        d = new v(sqlitedatabase);
        e = new z(sqlitedatabase);
    }

    public final Map a(int i)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(i);
        } else
        {
            d.b(i);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map a(int i, boolean flag)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(i, flag);
        } else
        {
            d.a(i);
            Map map = d.a(flag);
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", map);
            return hashmap;
        }
    }

    public final Map a(Reservation reservation, boolean flag)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(reservation, flag);
        } else
        {
            d.a(reservation);
            Map map = d.a(flag);
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", map);
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
            java.util.List list = e.a(s);
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }

    public final Map a(boolean flag)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(flag);
        } else
        {
            Map map = d.a(flag);
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", map);
            return hashmap;
        }
    }

    public final Map b(Reservation reservation, boolean flag)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.b(reservation, flag);
        } else
        {
            d.b(reservation);
            Map map = d.a(flag);
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", map);
            return hashmap;
        }
    }
}
