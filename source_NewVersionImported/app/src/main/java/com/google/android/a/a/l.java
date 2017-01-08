// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.a.a;

import java.util.Set;

// Referenced classes of package com.google.android.a.a:
//            j, i, n

final class l
    implements Runnable
{

    final j a;
    private final int b;
    private final String c;
    private final String d;

    l(j j1, int k, String s, String s1)
    {
        a = j1;
        b = k;
        c = s;
        d = s1;
        super();
    }

    public final void run()
    {
        if (i.b(j.c(a)).contains(j.a(a)))
        {
            j.b(a);
            j.a(a).a(i.c(j.c(a)), b, c, d);
            i.b(j.c(a), j.a(a));
        }
    }
}
