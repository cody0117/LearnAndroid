// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.a.a;

import android.os.Handler;

// Referenced classes of package com.google.android.a.a:
//            c, j, h, k, 
//            m

final class i extends c
{

    final h a;
    private final m b;
    private Runnable c;

    public i(h h1, m m)
    {
        a = h1;
        super();
        b = m;
        c = new j(this);
        h.a(a).postDelayed(c, 10000L);
    }

    static m a(i l)
    {
        return l.b;
    }

    static void b(i l)
    {
        h.a(l.a).removeCallbacks(l.c);
    }

    static h c(i l)
    {
        return l.a;
    }

    public final void a(int l, String s, String s1)
    {
        h.a(a).post(new k(this, l, s, s1));
    }
}
