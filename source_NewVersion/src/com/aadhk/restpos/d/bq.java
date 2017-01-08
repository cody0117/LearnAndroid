// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.restpos.b.n;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.c.f;

// Referenced classes of package com.aadhk.restpos.d:
//            bk

final class bq
    implements f
{

    final OrderItem a;
    final bk b;

    bq(bk bk1, OrderItem orderitem)
    {
        b = bk1;
        a = orderitem;
        super();
    }

    public final void a(long l)
    {
        bk.e(b).a(l, a.getId());
        bk.a(b, bk.e(b).b(bk.i(b).getId()));
        bk.j(b);
        bk.h(b);
    }
}
