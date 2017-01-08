// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.a.a;


// Referenced classes of package com.google.android.a.a:
//            i, h

final class j
    implements Runnable
{

    final i a;

    j(i k)
    {
        a = k;
        super();
    }

    public final void run()
    {
        h.a(i.c(a), i.a(a));
        h.b(i.c(a), i.a(a));
    }
}
