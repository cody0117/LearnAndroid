// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.ads.a;

import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.google.android.gms.ads.a:
//            a

final class c extends Thread
{

    CountDownLatch a;
    boolean b;
    private WeakReference c;
    private long d;

    public c(a a1, long l)
    {
        c = new WeakReference(a1);
        d = l;
        a = new CountDownLatch(1);
        b = false;
        start();
    }

    private void c()
    {
        a a1 = (a)c.get();
        if (a1 != null)
        {
            a1.c();
            b = true;
        }
    }

    public final void a()
    {
        a.countDown();
    }

    public final boolean b()
    {
        return b;
    }

    public final void run()
    {
        try
        {
            if (!a.await(d, TimeUnit.MILLISECONDS))
            {
                c();
            }
            return;
        }
        catch (InterruptedException interruptedexception)
        {
            c();
        }
    }
}
