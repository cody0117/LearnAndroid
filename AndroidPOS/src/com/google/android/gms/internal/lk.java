// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            ll, lm

public abstract class lk
{

    private final Runnable a = new ll(this);
    private volatile Thread b;

    public lk()
    {
    }

    static Thread a(lk lk1, Thread thread)
    {
        lk1.b = thread;
        return thread;
    }

    public abstract void a();

    public final void e()
    {
        lm.a(a);
    }

    public final void f()
    {
        u_();
        if (b != null)
        {
            b.interrupt();
        }
    }

    public abstract void u_();
}
