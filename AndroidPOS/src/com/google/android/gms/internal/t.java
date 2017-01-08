// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;

// Referenced classes of package com.google.android.gms.internal:
//            v, u, q, gs, 
//            lt, s

final class t
    implements Runnable
{

    final Context a;
    final gs b;
    final lt c;
    final String d;
    final s e;

    t(s s, Context context, gs gs, lt lt, String s1)
    {
        e = s;
        a = context;
        b = gs;
        c = lt;
        d = s1;
        super();
    }

    public final void run()
    {
        s s = e;
        Context context = a;
        gs gs = b;
        lt lt = c;
        v v1 = new v(context, gs);
        v1.a(new u(s, lt, v1));
        v1.a(d);
    }
}
