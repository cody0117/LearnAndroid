// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.c.ca;

// Referenced classes of package com.aadhk.restpos.a:
//            m

final class v
    implements ca
{

    final OrderItem a;
    final m b;

    v(m m1, OrderItem orderitem)
    {
        b = m1;
        a = orderitem;
        super();
    }

    public final void a(String s)
    {
        a.setRemark(s);
        b.notifyDataSetChanged();
    }
}
