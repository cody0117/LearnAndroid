// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.c.bb;

// Referenced classes of package com.aadhk.restpos.a:
//            q

final class z
    implements bb
{

    final OrderItem a;
    final q b;

    z(q q1, OrderItem orderitem)
    {
        b = q1;
        a = orderitem;
        super();
    }

    public final void a(Object obj)
    {
        a.setRemark((String)obj);
        b.notifyDataSetChanged();
    }
}
