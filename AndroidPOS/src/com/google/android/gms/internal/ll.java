// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            lk

final class ll
    implements Runnable
{

    final lk a;

    ll(lk lk1)
    {
        a = lk1;
        super();
    }

    public final void run()
    {
        lk.a(a, Thread.currentThread());
        a.a();
    }
}
