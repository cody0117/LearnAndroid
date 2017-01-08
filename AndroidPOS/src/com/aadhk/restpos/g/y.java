// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.g;

import android.content.Context;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.w;
import com.aadhk.restpos.f.ch;
import com.aadhk.restpos.util.r;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class y
{

    private Context a;
    private r b;
    private ch c;
    private w d;

    public y(Context context)
    {
        a = context;
        b = new r(context);
        c = new ch(context);
        d = new w(f.a().b());
    }

    public final Map a(int i)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(i);
        } else
        {
            List list = d.a(i);
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
            List list1 = d.a(1);
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list1);
            return hashmap;
        }
    }

    public final Map b(int i)
    {
        return d.b(i);
    }
}
