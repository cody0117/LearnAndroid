// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            fj, lq

public final class kt
{

    private String a;
    private String b;
    private String c;
    private List d;
    private String e;
    private String f;
    private List g;
    private long h;
    private boolean i;
    private final long j = -1L;
    private List k;
    private long l;
    private int m;
    private boolean n;
    private boolean o;
    private boolean p;
    private boolean q;

    public kt()
    {
        h = -1L;
        i = false;
        l = -1L;
        m = -1;
        n = false;
        o = false;
        p = false;
        q = true;
    }

    private static String a(Map map, String s)
    {
        List list = (List)map.get(s);
        if (list != null && !list.isEmpty())
        {
            return (String)list.get(0);
        } else
        {
            return null;
        }
    }

    private static long b(Map map, String s)
    {
        String s1;
        List list = (List)map.get(s);
        if (list == null || list.isEmpty())
        {
            break MISSING_BLOCK_LABEL_73;
        }
        s1 = (String)list.get(0);
        float f1 = Float.parseFloat(s1);
        return (long)(f1 * 1000F);
        NumberFormatException numberformatexception;
        numberformatexception;
        (new StringBuilder("Could not parse float from ")).append(s).append(" header: ").append(s1);
        return -1L;
    }

    private static List c(Map map, String s)
    {
        List list = (List)map.get(s);
        if (list != null && !list.isEmpty())
        {
            String s1 = (String)list.get(0);
            if (s1 != null)
            {
                return Arrays.asList(s1.trim().split("\\s+"));
            }
        }
        return null;
    }

    private static boolean d(Map map, String s)
    {
        List list = (List)map.get(s);
        return list != null && !list.isEmpty() && Boolean.valueOf((String)list.get(0)).booleanValue();
    }

    public final fj a(long l1)
    {
        return new fj(b, c, d, g, h, i, k, l, m, a, l1, e, f, n, o, p, q);
    }

    public final void a(String s, Map map, String s1)
    {
        b = s;
        c = s1;
        a(map);
    }

    public final void a(Map map)
    {
        List list4;
        a = a(map, "X-Afma-Ad-Size");
        List list = c(map, "X-Afma-Click-Tracking-Urls");
        if (list != null)
        {
            d = list;
        }
        List list1 = (List)map.get("X-Afma-Debug-Dialog");
        if (list1 != null && !list1.isEmpty())
        {
            e = (String)list1.get(0);
        }
        List list2 = c(map, "X-Afma-Tracking-Urls");
        if (list2 != null)
        {
            g = list2;
        }
        long l1 = b(map, "X-Afma-Interstitial-Timeout");
        if (l1 != -1L)
        {
            h = l1;
        }
        i = i | d(map, "X-Afma-Mediation");
        List list3 = c(map, "X-Afma-Manual-Tracking-Urls");
        if (list3 != null)
        {
            k = list3;
        }
        long l2 = b(map, "X-Afma-Refresh-Rate");
        if (l2 != -1L)
        {
            l = l2;
        }
        list4 = (List)map.get("X-Afma-Orientation");
        if (list4 == null || list4.isEmpty()) goto _L2; else goto _L1
_L1:
        String s = (String)list4.get(0);
        if (!"portrait".equalsIgnoreCase(s)) goto _L4; else goto _L3
_L3:
        m = lq.c();
_L2:
        f = a(map, "X-Afma-ActiveView");
        List list5 = (List)map.get("X-Afma-Use-HTTPS");
        if (list5 != null && !list5.isEmpty())
        {
            p = Boolean.valueOf((String)list5.get(0)).booleanValue();
        }
        n = n | d(map, "X-Afma-Custom-Rendering-Allowed");
        o = o | d(map, "X-Afma-Native");
        List list6 = (List)map.get("X-Afma-Content-Url-Opted-Out");
        if (list6 != null && !list6.isEmpty())
        {
            q = Boolean.valueOf((String)list6.get(0)).booleanValue();
        }
        return;
_L4:
        if ("landscape".equalsIgnoreCase(s))
        {
            m = lq.b();
        }
        if (true) goto _L2; else goto _L5
_L5:
    }
}
