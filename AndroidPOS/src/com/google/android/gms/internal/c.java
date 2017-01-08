// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.lang.ref.WeakReference;

// Referenced classes of package com.google.android.gms.internal:
//            b, ts

final class c
    implements Runnable
{

    final ts a;
    final b b;
    private final WeakReference c;

    c(b b1, ts ts1)
    {
        b = b1;
        a = ts1;
        super();
        c = new WeakReference(a);
    }

    public final void run()
    {
        com.google.android.gms.internal.b.a(b);
        ts ts1 = (ts)c.get();
        if (ts1 != null)
        {
            ts1.b(com.google.android.gms.internal.b.b(b));
        }
    }
}
