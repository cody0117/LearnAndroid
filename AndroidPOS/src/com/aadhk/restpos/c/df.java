// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import com.aadhk.product.library.b.f;
import com.aadhk.restpos.bean.Order;

// Referenced classes of package com.aadhk.restpos.c:
//            f, de

final class df
    implements com.aadhk.restpos.c.f
{

    final Order a;
    final de b;

    df(de de1, Order order)
    {
        b = de1;
        a = order;
        super();
    }

    public final void a()
    {
        if (b.a != null)
        {
            b.a.a(a);
            b.dismiss();
        }
    }
}
