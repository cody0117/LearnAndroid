// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.aadhk.restpos.c.i;

// Referenced classes of package com.aadhk.restpos:
//            PayInOutActivity

final class cc
    implements i
{

    final PayInOutActivity a;

    cc(PayInOutActivity payinoutactivity)
    {
        a = payinoutactivity;
        super();
    }

    public final void a(String s, String s1)
    {
        a.a(s);
        a.b(s1);
        PayInOutActivity.a(a);
        a.a();
    }
}
