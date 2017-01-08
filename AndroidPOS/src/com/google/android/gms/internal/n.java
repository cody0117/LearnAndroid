// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            cz, h, f, mg

final class n
    implements cz
{

    final h a;

    n(h h1)
    {
        a = h1;
        super();
    }

    public final void a(mg mg, Map map)
    {
        if (!a.a(map))
        {
            return;
        } else
        {
            (new StringBuilder("Received request to untrack: ")).append(h.b(a).d());
            a.c();
            return;
        }
    }
}
