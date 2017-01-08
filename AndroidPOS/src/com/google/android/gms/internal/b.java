// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            d, me, c, av, 
//            ts

public final class b
{

    private final d a;
    private final Runnable b;
    private av c;
    private boolean d;
    private boolean e;
    private long f;

    public b(ts ts)
    {
        this(ts, new d(me.a));
    }

    private b(ts ts, d d1)
    {
        d = false;
        e = false;
        f = 0L;
        a = d1;
        b = new c(this, ts);
    }

    static boolean a(b b1)
    {
        b1.d = false;
        return false;
    }

    static av b(b b1)
    {
        return b1.c;
    }

    public final void a()
    {
        d = false;
        a.a(b);
    }

    public final void a(av av)
    {
        a(av, 60000L);
    }

    public final void a(av av, long l)
    {
        if (!d)
        {
            c = av;
            d = true;
            f = l;
            if (!e)
            {
                (new StringBuilder("Scheduling ad refresh ")).append(l).append(" milliseconds from now.");
                a.a(b, l);
                return;
            }
        }
    }

    public final void b()
    {
        e = true;
        if (d)
        {
            a.a(b);
        }
    }

    public final void c()
    {
        e = false;
        if (d)
        {
            d = false;
            a(c, f);
        }
    }

    public final boolean d()
    {
        return d;
    }
}
