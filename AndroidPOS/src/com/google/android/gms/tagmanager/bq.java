// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;


// Referenced classes of package com.google.android.gms.tagmanager:
//            bo, h

final class bq
    implements Runnable
{

    final h a;
    final bo b;

    bq(bo bo1, h h1)
    {
        b = bo1;
        a = h1;
        super();
    }

    public final void run()
    {
        a.a(bo.a(b));
    }
}
