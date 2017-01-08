// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

// Referenced classes of package com.google.android.gms.internal:
//            lk, ka, lz, lb, 
//            lm, la, me, jy, 
//            fh, fj, jb, ts, 
//            s

public final class jx extends lk
{

    private final jb a;
    private final fj b;
    private final lb c;
    private final ka d;
    private final Object e;
    private Future f;

    public jx(Context context, ts ts, s s, lb lb1, jb jb)
    {
        this(lb1, jb, new ka(context, ts, s, new lz(), lb1));
    }

    private jx(lb lb1, jb jb, ka ka1)
    {
        e = new Object();
        c = lb1;
        b = lb1.b;
        a = jb;
        d = ka1;
    }

    static jb a(jx jx1)
    {
        return jx1.a;
    }

    public final void a()
    {
        byte byte0 = -2;
        synchronized (e)
        {
            f = lm.a(d);
        }
        la la1;
        try
        {
            la1 = (la)f.get(60000L, TimeUnit.MILLISECONDS);
        }
        catch (TimeoutException timeoutexception)
        {
            byte0 = 2;
            la1 = null;
        }
        catch (ExecutionException executionexception)
        {
            la1 = null;
            byte0 = 0;
        }
        catch (InterruptedException interruptedexception)
        {
            byte0 = -1;
            la1 = null;
        }
        catch (CancellationException cancellationexception)
        {
            byte0 = -1;
            la1 = null;
        }
        if (la1 == null)
        {
            la1 = new la(c.a.c, null, null, byte0, null, null, b.l, b.k, c.a.i, false, null, null, null, null, null, b.i, c.d, b.g, c.f, b.n, b.o, c.h, null);
        }
        me.a.post(new jy(this, la1));
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final void u_()
    {
        synchronized (e)
        {
            if (f != null)
            {
                f.cancel(true);
            }
        }
    }
}
