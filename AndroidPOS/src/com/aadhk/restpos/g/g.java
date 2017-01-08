// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.g;

import android.content.Context;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.i;
import com.aadhk.restpos.b.k;
import com.aadhk.restpos.bean.KitchenNote;
import com.aadhk.restpos.f.t;
import com.aadhk.restpos.util.r;
import java.util.HashMap;
import java.util.Map;

public final class g
{

    private Context a;
    private r b;
    private t c;
    private k d;
    private i e;

    public g(Context context)
    {
        a = context;
        b = new r(context);
        c = new t(context);
        android.database.sqlite.SQLiteDatabase sqlitedatabase = f.a().b();
        d = new k(sqlitedatabase);
        e = new i(sqlitedatabase);
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

    public final Map a(int j)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(j);
        } else
        {
            d.a(j);
            java.util.List list = d.a();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }

    public final Map a(KitchenNote kitchennote)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.b(kitchennote);
        } else
        {
            d.b(kitchennote);
            java.util.List list = d.a();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }

    public final Map b(KitchenNote kitchennote)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(kitchennote);
        } else
        {
            d.a(kitchennote);
            java.util.List list = d.a();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }
}
