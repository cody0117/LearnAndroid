// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.restpos.c.d;
import com.aadhk.restpos.c.f;

// Referenced classes of package com.aadhk.restpos.d:
//            s, q

final class u
    implements f
{

    final d a;
    final s b;

    u(s s1, d d1)
    {
        b = s1;
        a = d1;
        super();
    }

    public final void a()
    {
        if (com.aadhk.restpos.d.q.d(b.a) != 1) goto _L2; else goto _L1
_L1:
        q.j(b.a);
_L4:
        a.dismiss();
        return;
_L2:
        if (com.aadhk.restpos.d.q.d(b.a) == 2)
        {
            q.k(b.a);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
