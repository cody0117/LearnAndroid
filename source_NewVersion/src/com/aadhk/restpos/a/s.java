// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import com.aadhk.product.library.b.f;
import com.aadhk.restpos.bean.OrderItem;

// Referenced classes of package com.aadhk.restpos.a:
//            r, m

final class s
    implements f
{

    final r a;

    s(r r1)
    {
        a = r1;
        super();
    }

    public final void a(Object obj)
    {
        int i = ((Integer)obj).intValue();
        if (i == 0)
        {
            if (a.a.getStatus() != 2)
            {
                a.a.setStatus(2);
            } else
            {
                a.a.setStatus(0);
            }
            a.b.notifyDataSetChanged();
        } else
        {
            if (i == 1)
            {
                m.a(a.b, a.a);
                return;
            }
            if (i == 2)
            {
                m.b(a.b, a.a);
                return;
            }
            if (i == 3)
            {
                m.c(a.b, a.a);
                return;
            }
        }
    }
}
