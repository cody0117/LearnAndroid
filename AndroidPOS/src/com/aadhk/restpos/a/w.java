// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import com.aadhk.product.library.b.f;
import com.aadhk.restpos.bean.OrderItem;

// Referenced classes of package com.aadhk.restpos.a:
//            v, q

final class w
    implements f
{

    final v a;

    w(v v1)
    {
        a = v1;
        super();
    }

    public final void a(Object obj)
    {
        int i = ((Integer)obj).intValue();
        if (i != 0) goto _L2; else goto _L1
_L1:
        if (a.a.getStatus() != 2)
        {
            a.a.setStatus(2);
        } else
        {
            a.a.setStatus(0);
        }
        a.b.notifyDataSetChanged();
_L4:
        return;
_L2:
        if (i == 1)
        {
            q.a(a.b, a.a);
            return;
        }
        if (q.d(a.b).length <= 3)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (i == 2)
        {
            q.b(a.b, a.a);
            return;
        }
        if (i != 3) goto _L4; else goto _L3
_L3:
        q.c(a.b, a.a);
        return;
        if (i != 2) goto _L4; else goto _L5
_L5:
        q.c(a.b, a.a);
        return;
    }
}
