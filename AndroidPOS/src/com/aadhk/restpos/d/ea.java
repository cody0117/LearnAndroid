// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.c.bm;

// Referenced classes of package com.aadhk.restpos.d:
//            du

final class ea
    implements bm
{

    final OrderItem a;
    final du b;

    ea(du du1, OrderItem orderitem)
    {
        b = du1;
        a = orderitem;
        super();
    }

    public final void a()
    {
        b.a(a);
    }
}
