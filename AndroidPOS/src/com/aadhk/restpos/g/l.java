// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.g;

import android.content.Context;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.m;
import com.aadhk.restpos.bean.ModifierGroup;
import com.aadhk.restpos.f.ap;
import com.aadhk.restpos.util.r;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class l
{

    private Context a;
    private r b;
    private ap c;
    private com.aadhk.restpos.b.l d;
    private m e;

    public l(Context context)
    {
        a = context;
        b = new r(context);
        c = new ap(context);
        android.database.sqlite.SQLiteDatabase sqlitedatabase = f.a().b();
        d = new com.aadhk.restpos.b.l(sqlitedatabase);
        e = new m(sqlitedatabase);
    }

    public final Map a()
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a();
        } else
        {
            List list = e.a();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }

    public final Map a(long l1)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(l1);
        } else
        {
            d.a(l1);
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
    }

    public final Map a(ModifierGroup modifiergroup, List list)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(modifiergroup, list);
        } else
        {
            e.a(modifiergroup, list);
            List list1 = e.a();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list1);
            return hashmap;
        }
    }

    public final Map b(long l1)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.b(l1);
        } else
        {
            e.a(l1);
            List list = e.a();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }
}
