// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.a.a;

import android.os.Handler;

// Referenced classes of package com.google.android.a.a:
//            d, k, i, l, 
//            n

final class j extends d
{

    final i a;
    private final n b;
    private Runnable c;

    public j(i i1, n n)
    {
        a = i1;
        super();
        b = n;
        c = new k(this);
        i.a(a).postDelayed(c, 10000L);
    }

    static n a(j j1)
    {
        return j1.b;
    }

    static void b(j j1)
    {
        i.a(j1.a).removeCallbacks(j1.c);
    }

    static i c(j j1)
    {
        return j1.a;
    }

    public final void a(int i1, String s, String s1)
    {
        i.a(a).post(new l(this, i1, s, s1));
    }
}
