// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.g;

import android.content.Context;
import com.aadhk.restpos.b.e;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.f.m;
import com.aadhk.restpos.util.r;
import java.util.HashMap;
import java.util.Map;

public final class d
{

    private Context a;
    private r b;
    private m c;
    private e d;

    public d(Context context)
    {
        a = context;
        b = new r(context);
        c = new m(context);
        d = new e(f.a().b());
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
}
