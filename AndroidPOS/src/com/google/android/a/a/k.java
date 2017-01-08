// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.a.a;

import java.util.Set;

// Referenced classes of package com.google.android.a.a:
//            i, h, m

final class k
    implements Runnable
{

    final i a;
    private final int b;
    private final String c;
    private final String d;

    k(i j, int l, String s, String s1)
    {
        a = j;
        b = l;
        c = s;
        d = s1;
        super();
    }

    public final void run()
    {
        if (h.b(i.c(a)).contains(i.a(a)))
        {
            i.b(a);
            i.a(a).a(h.c(i.c(a)), b, c, d);
            h.b(i.c(a), i.a(a));
        }
    }
}
