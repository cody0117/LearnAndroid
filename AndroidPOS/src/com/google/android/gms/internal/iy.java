// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;

// Referenced classes of package com.google.android.gms.internal:
//            mx, fj, mg, lq, 
//            mk, iz

public final class iy
    implements Runnable
{

    protected final mg a;
    protected boolean b;
    protected boolean c;
    private final Handler d;
    private final long e;
    private long f;
    private mk g;
    private final int h;
    private final int i;

    private iy(mk mk1, mg mg1, int j, int k)
    {
        e = 200L;
        f = 50L;
        d = new Handler(Looper.getMainLooper());
        a = mg1;
        g = mk1;
        b = false;
        c = false;
        h = k;
        i = j;
    }

    public iy(mk mk1, mg mg1, int j, int k, byte byte0)
    {
        this(mk1, mg1, j, k);
    }

    static int a(iy iy1)
    {
        return iy1.i;
    }

    static int b(iy iy1)
    {
        return iy1.h;
    }

    static long c(iy iy1)
    {
        long l = iy1.f - 1L;
        iy1.f = l;
        return l;
    }

    static long d(iy iy1)
    {
        return iy1.f;
    }

    static mk e(iy iy1)
    {
        return iy1.g;
    }

    static long f(iy iy1)
    {
        return iy1.e;
    }

    static Handler g(iy iy1)
    {
        return iy1.d;
    }

    public final void a()
    {
        d.postDelayed(this, e);
    }

    public final void a(fj fj1)
    {
        mx mx1 = new mx(this, a, fj1.q);
        a.setWebViewClient(mx1);
        mg mg1 = a;
        String s;
        if (TextUtils.isEmpty(fj1.b))
        {
            s = null;
        } else
        {
            s = lq.a(fj1.b);
        }
        mg1.loadDataWithBaseURL(s, fj1.c, "text/html", "UTF-8", null);
    }

    public final void b()
    {
        this;
        JVM INSTR monitorenter ;
        b = true;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final boolean c()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = b;
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public final boolean d()
    {
        return c;
    }

    public final void run()
    {
        if (a == null || c())
        {
            g.a(a);
            return;
        } else
        {
            (new iz(this, a)).execute(new Void[0]);
            return;
        }
    }
}
