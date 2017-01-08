// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.gms.a.f;

// Referenced classes of package com.google.android.gms.internal:
//            eb, du, gs, ay, 
//            dt, eh, ee, dw, 
//            me, dy, dz, av

public final class dx
    implements eb
{

    private final String a;
    private final ee b;
    private final long c;
    private final dt d;
    private final av e;
    private final ay f;
    private final Context g;
    private final Object h = new Object();
    private final gs i;
    private eh j;
    private int k;

    public dx(Context context, String s, ee ee1, du du1, dt dt1, av av, ay ay1, 
            gs gs1)
    {
        k = -2;
        g = context;
        b = ee1;
        d = dt1;
        long l;
        if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(s))
        {
            a = b();
        } else
        {
            a = s;
        }
        if (du1.b != -1L)
        {
            l = du1.b;
        } else
        {
            l = 10000L;
        }
        c = l;
        e = av;
        f = ay1;
        i = gs1;
    }

    static eh a(dx dx1, eh eh1)
    {
        dx1.j = eh1;
        return eh1;
    }

    static Object a(dx dx1)
    {
        return dx1.h;
    }

    static void a(dx dx1, dw dw1)
    {
        if (dx1.i.d >= 0x3e8fa0)
        {
            break MISSING_BLOCK_LABEL_91;
        }
        if (dx1.f.e)
        {
            dx1.j.a(com.google.android.gms.a.f.a(dx1.g), dx1.e, dx1.d.g, dw1);
            return;
        }
        try
        {
            dx1.j.a(com.google.android.gms.a.f.a(dx1.g), dx1.f, dx1.e, dx1.d.g, dw1);
            return;
        }
        catch (RemoteException remoteexception)
        {
            dx1.a(5);
        }
        return;
        if (dx1.f.e)
        {
            dx1.j.a(com.google.android.gms.a.f.a(dx1.g), dx1.e, dx1.d.g, dx1.d.a, dw1);
            return;
        }
        dx1.j.a(com.google.android.gms.a.f.a(dx1.g), dx1.f, dx1.e, dx1.d.g, dx1.d.a, dw1);
        return;
    }

    static int b(dx dx1)
    {
        return dx1.k;
    }

    private String b()
    {
label0:
        {
            if (!TextUtils.isEmpty(d.e))
            {
                if (b.b(d.e))
                {
                    return "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter";
                } else
                {
                    return "com.google.ads.mediation.customevent.CustomEventAdapter";
                }
            }
            break label0;
        }
        RemoteException remoteexception;
        remoteexception;
        return "com.google.ads.mediation.customevent.CustomEventAdapter";
    }

    private eh c()
    {
        (new StringBuilder("Instantiating mediation adapter: ")).append(a);
        eh eh1;
        try
        {
            eh1 = b.a(a);
        }
        catch (RemoteException remoteexception)
        {
            (new StringBuilder("Could not instantiate mediation adapter: ")).append(a);
            return null;
        }
        return eh1;
    }

    static eh c(dx dx1)
    {
        return dx1.c();
    }

    static eh d(dx dx1)
    {
        return dx1.j;
    }

    public final dz a(long l)
    {
        Object obj = h;
        obj;
        JVM INSTR monitorenter ;
        long l1;
        dw dw1;
        long l2;
        l1 = SystemClock.elapsedRealtime();
        dw1 = new dw();
        me.a.post(new dy(this, dw1));
        l2 = c;
_L1:
        long l3;
        if (k != -2)
        {
            break MISSING_BLOCK_LABEL_133;
        }
        l3 = SystemClock.elapsedRealtime();
        long l4;
        long l5;
        l4 = l2 - (l3 - l1);
        l5 = 60000L - (l3 - l);
        if (l4 > 0L && l5 > 0L)
        {
            break MISSING_BLOCK_LABEL_107;
        }
        k = 3;
          goto _L1
        Exception exception;
        exception;
        throw exception;
        h;
        Math.min(l4, l5);
          goto _L1
        InterruptedException interruptedexception;
        interruptedexception;
        k = -1;
          goto _L1
        dz dz1 = new dz(d, j, a, dw1, k);
        obj;
        JVM INSTR monitorexit ;
        return dz1;
    }

    public final void a()
    {
        Object obj = h;
        obj;
        JVM INSTR monitorenter ;
        Exception exception;
        try
        {
            if (j != null)
            {
                j.c();
            }
        }
        catch (RemoteException remoteexception) { }
        k = -1;
        h;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final void a(int l)
    {
        synchronized (h)
        {
            k = l;
            Object _tmp = h;
        }
    }
}
