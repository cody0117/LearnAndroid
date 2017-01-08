// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.g;

import android.content.Context;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.o;
import com.aadhk.restpos.b.z;
import com.aadhk.restpos.f.cy;
import com.aadhk.restpos.util.r;
import java.util.HashMap;
import java.util.Map;

public final class ac
{

    private Context a;
    private r b;
    private cy c;
    private z d;
    private o e;

    public ac(Context context)
    {
        a = context;
        b = new r(context);
        c = new cy(a);
        android.database.sqlite.SQLiteDatabase sqlitedatabase = f.a().b();
        d = new z(sqlitedatabase);
        e = new o(sqlitedatabase);
    }

    public final Map a(int i)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(i);
        } else
        {
            hashmap.put("serviceData", d.a(i));
            hashmap.put("serviceStatus", "1");
            return hashmap;
        }
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
}
