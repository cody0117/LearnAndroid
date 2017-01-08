// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.a;


// Referenced classes of package com.aadhk.a:
//            j, f, k, l

final class g
    implements Runnable
{

    final f a;
    private final j b;
    private final k c;
    private final l d;

    g(f f, j j1, k k, l l)
    {
        a = f;
        b = j1;
        c = k;
        d = l;
        super();
    }

    public final void run()
    {
        b.a(c, d);
    }
}
