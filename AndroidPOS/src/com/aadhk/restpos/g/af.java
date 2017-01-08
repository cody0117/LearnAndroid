// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.g;

import android.content.Context;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.n;
import com.aadhk.restpos.bean.Note;
import com.aadhk.restpos.f.dl;
import com.aadhk.restpos.util.r;
import java.util.HashMap;
import java.util.Map;

public final class af
{

    private Context a;
    private r b;
    private dl c;
    private n d;

    public af(Context context)
    {
        a = context;
        b = new r(context);
        c = new dl(context);
        d = new n(f.a().b());
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

    public final Map a(int i)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(i);
        } else
        {
            d.a(i);
            java.util.List list = d.a();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }

    public final Map a(Note note)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(note);
        } else
        {
            d.a(note);
            java.util.List list = d.a();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }

    public final Map b(Note note)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.b(note);
        } else
        {
            d.b(note);
            java.util.List list = d.a();
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceData", list);
            return hashmap;
        }
    }
}
