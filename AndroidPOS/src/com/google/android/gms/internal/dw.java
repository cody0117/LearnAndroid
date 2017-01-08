// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            en, dv, eb

public final class dw extends en
{

    private final Object a = new Object();
    private eb b;
    private dv c;

    public dw()
    {
    }

    public final void a()
    {
        synchronized (a)
        {
            if (c != null)
            {
                c.k();
            }
        }
    }

    public final void a(int i)
    {
        Object obj = a;
        obj;
        JVM INSTR monitorenter ;
        if (b == null)
        {
            break MISSING_BLOCK_LABEL_38;
        }
        int j;
        if (i == 3)
        {
            j = 1;
        } else
        {
            j = 2;
        }
        b.a(j);
        b = null;
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(dv dv1)
    {
        synchronized (a)
        {
            c = dv1;
        }
    }

    public final void a(eb eb1)
    {
        synchronized (a)
        {
            b = eb1;
        }
    }

    public final void b()
    {
        synchronized (a)
        {
            if (c != null)
            {
                c.l();
            }
        }
    }

    public final void c()
    {
        synchronized (a)
        {
            if (c != null)
            {
                c.m();
            }
        }
    }

    public final void d()
    {
        synchronized (a)
        {
            if (c != null)
            {
                c.n();
            }
        }
    }

    public final void e()
    {
label0:
        {
            synchronized (a)
            {
                if (b == null)
                {
                    break label0;
                }
                b.a(0);
                b = null;
            }
            return;
        }
        if (c != null)
        {
            c.o();
        }
        obj;
        JVM INSTR monitorexit ;
    }
}
