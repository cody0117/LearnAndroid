// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.aadhk.product.library.b.f;
import com.aadhk.restpos.bean.Order;

// Referenced classes of package com.aadhk.restpos:
//            ed, TakeOrderActivity

final class ee
    implements f
{

    final ed a;

    ee(ed ed1)
    {
        a = ed1;
        super();
    }

    public final void a(Object obj)
    {
        Order order = (Order)obj;
        a.a.a(order);
    }
}
