// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.a.a;


// Referenced classes of package com.google.android.a.a:
//            j, i

final class k
    implements Runnable
{

    final j a;

    k(j j1)
    {
        a = j1;
        super();
    }

    public final void run()
    {
        i.a(j.c(a), j.a(a));
        i.b(j.c(a), j.a(a));
    }
}
