// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;


// Referenced classes of package com.google.android.gms.tagmanager:
//            ay, ba, x, bb, 
//            u, t, v

final class az extends ay
{

    private static final Object a = new Object();
    private static az k;
    private u b;
    private volatile t c;
    private int d;
    private boolean e;
    private boolean f;
    private boolean g;
    private boolean h;
    private v i;
    private boolean j;

    private az()
    {
        d = 0x1b7740;
        e = true;
        f = false;
        g = true;
        h = true;
        i = new ba(this);
        j = false;
    }

    static u a(az az1)
    {
        return az1.b;
    }

    public static az b()
    {
        if (k == null)
        {
            k = new az();
        }
        return k;
    }

    public final void a()
    {
        this;
        JVM INSTR monitorenter ;
        if (f) goto _L2; else goto _L1
_L1:
        x.e();
        e = true;
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        c;
        new bb(this);
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

}
