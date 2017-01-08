// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import com.aadhk.restpos.c.r;

// Referenced classes of package com.aadhk.restpos.a:
//            i, h

final class j
    implements r
{

    final i a;

    j(i k)
    {
        a = k;
        super();
    }

    public final void a(Object obj, Object obj1)
    {
        int k = Integer.parseInt((String)obj);
        double d = Double.parseDouble((String)obj1);
        h.a(a.c, a.b, a.a, k, d);
    }
}
