// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            cz, lq, tz, mg, 
//            mi, da, do

public final class de
    implements cz
{

    private final da a;
    private final tz b;

    public de(da da1, tz tz1)
    {
        a = da1;
        b = tz1;
    }

    private static boolean a(Map map)
    {
        return "1".equals(map.get("custom_close"));
    }

    private static int b(Map map)
    {
        String s = (String)map.get("o");
        if (s != null)
        {
            if ("p".equalsIgnoreCase(s))
            {
                return lq.c();
            }
            if ("l".equalsIgnoreCase(s))
            {
                return lq.b();
            }
        }
        return -1;
    }

    public final void a(mg mg1, Map map)
    {
        String s = (String)map.get("a");
        if (s != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        mi mi1;
        if (b != null && !b.b())
        {
            b.a((String)map.get("u"));
            return;
        }
        mi1 = mg1.f();
        if (!"expand".equalsIgnoreCase(s))
        {
            break; /* Loop/switch isn't completed */
        }
        if (!mg1.j())
        {
            mi1.a(a(map), b(map));
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
        if ("webapp".equalsIgnoreCase(s))
        {
            String s3 = (String)map.get("u");
            if (s3 != null)
            {
                mi1.a(a(map), b(map), s3);
                return;
            } else
            {
                mi1.a(a(map), b(map), (String)map.get("html"), (String)map.get("baseurl"));
                return;
            }
        }
        if ("in_app_purchase".equalsIgnoreCase(s))
        {
            String s1 = (String)map.get("product_id");
            String s2 = (String)map.get("report_urls");
            if (a != null)
            {
                if (s2 != null && !s2.isEmpty())
                {
                    String as[] = s2.split(" ");
                    a.a(s1, new ArrayList(Arrays.asList(as)));
                    return;
                } else
                {
                    a.a(s1, new ArrayList());
                    return;
                }
            }
        } else
        {
            mi1.a(new do((String)map.get("i"), (String)map.get("u"), (String)map.get("m"), (String)map.get("p"), (String)map.get("c"), (String)map.get("f"), (String)map.get("e")));
            return;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }
}
