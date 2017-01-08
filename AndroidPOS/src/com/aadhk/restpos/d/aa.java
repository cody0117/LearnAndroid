// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.product.library.b.f;

// Referenced classes of package com.aadhk.restpos.d:
//            q

final class aa
    implements f
{

    final q a;

    aa(q q1)
    {
        a = q1;
        super();
    }

    public final void a(Object obj)
    {
        q.b(a, ((Integer)obj).intValue());
        if (q.d(a) == 0)
        {
            q.e(a);
        } else
        {
            if (q.d(a) == 1)
            {
                com.aadhk.restpos.d.q.f(a);
                return;
            }
            if (q.d(a) == 2)
            {
                q.g(a);
                return;
            }
        }
    }
}
