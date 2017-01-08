// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.g;

import android.content.Context;
import com.aadhk.restpos.b.a;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.CloseOutCashRegister;
import com.aadhk.restpos.f.bg;
import com.aadhk.restpos.util.r;
import java.util.HashMap;
import java.util.Map;

public final class p
{

    private Context a;
    private r b;
    private bg c;
    private a d;

    public p(Context context)
    {
        a = context;
        b = new r(context);
        c = new bg(context);
        d = new a(f.a().b());
    }

    public final Map a(CloseOutCashRegister closeoutcashregister)
    {
        HashMap hashmap = new HashMap();
        if (b.v())
        {
            return c.a(closeoutcashregister);
        } else
        {
            d.a(closeoutcashregister);
            hashmap.put("serviceStatus", "1");
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
            String s1 = d.a(null);
            double d1 = d.a(0, null);
            double d2 = d.a(s1, s, 1);
            double d3 = d.a(s1, s, 2);
            double d4 = d.b(s1, s);
            hashmap.put("serviceStatus", "1");
            hashmap.put("serviceLastTime", s1);
            hashmap.put("serviceStartAmount", Double.valueOf(d1));
            hashmap.put("servicePayingAmount", Double.valueOf(d2));
            hashmap.put("servicePayoutAmount", Double.valueOf(d3));
            hashmap.put("serviceOrdersTotalAmount", Double.valueOf(d4));
            return hashmap;
        }
    }
}
