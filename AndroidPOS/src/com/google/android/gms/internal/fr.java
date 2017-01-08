// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Handler;

// Referenced classes of package com.google.android.gms.internal:
//            fs, me, fq

final class fr
{

    private final Runnable a;
    private volatile boolean b;

    public fr(fq fq)
    {
        b = false;
        a = new fs(this, fq);
    }

    static boolean a(fr fr1)
    {
        return fr1.b;
    }

    public final void a()
    {
        b = true;
        me.a.removeCallbacks(a);
    }

    public final void b()
    {
        me.a.postDelayed(a, 250L);
    }
}
