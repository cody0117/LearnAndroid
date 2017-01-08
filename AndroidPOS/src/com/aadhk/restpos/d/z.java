// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.product.library.b.f;
import com.aadhk.product.library.b.k;

// Referenced classes of package com.aadhk.restpos.d:
//            q

final class z
    implements f
{

    final k a;
    final q b;

    z(q q1, k k1)
    {
        b = q1;
        a = k1;
        super();
    }

    public final void a(Object obj)
    {
        q.a(b, q.c(b)[((Integer)obj).intValue()]);
        a.dismiss();
    }
}
