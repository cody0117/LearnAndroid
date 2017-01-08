// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.d.bv;
import com.aadhk.restpos.f.i;

// Referenced classes of package com.aadhk.restpos.a:
//            m

final class x
    implements com.aadhk.restpos.c.x
{

    final OrderItem a;
    final m b;

    x(m m1, OrderItem orderitem)
    {
        b = m1;
        a = orderitem;
        super();
    }

    public final void a(Object obj)
    {
        OrderItem orderitem = (OrderItem)obj;
        orderitem.setStartTime(i.c());
        m.a(b).a();
        b.notifyDataSetChanged();
        m.c(b).b(m.b(b));
        m.c(b).d();
        if (a.isWarn())
        {
            m.c(b).a(orderitem.getItemId());
        }
    }
}
