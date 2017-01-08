// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.product.library.a.b;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.b.i;
import com.aadhk.restpos.b.n;
import com.aadhk.restpos.b.w;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.f.k;
import com.aadhk.restpos.f.l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            bv

final class bx
    implements b
{

    final bv a;

    bx(bv bv1)
    {
        a = bv1;
        super();
    }

    public final void a()
    {
        HashMap hashmap;
        Iterator iterator;
        if (bv.a(a).getId() == 0L)
        {
            bv.d(a).a(bv.a(a), com.aadhk.restpos.d.bv.b(a), bv.c(a).r());
            bv.e(a).a("prefOrderNum", bv.a(a).getOrderNum());
        } else
        {
            bv.f(a).a(bv.a(a).getId(), com.aadhk.restpos.d.bv.b(a));
        }
        hashmap = new HashMap();
        iterator = com.aadhk.restpos.d.bv.b(a).iterator();
        while (iterator.hasNext()) 
        {
            OrderItem orderitem = (OrderItem)iterator.next();
            long l1 = orderitem.getItemId();
            Integer integer = (Integer)hashmap.get(Long.valueOf(l1));
            Integer integer1;
            if (integer == null)
            {
                integer1 = Integer.valueOf(orderitem.getNum());
            } else
            {
                integer1 = Integer.valueOf(integer.intValue() + orderitem.getNum());
            }
            hashmap.put(Long.valueOf(l1), integer1);
        }
        bv.g(a).a(hashmap);
    }

    public final void b()
    {
        if (bv.e(a).h() && bv.a(a).getTableId() != 0L)
        {
            k.c(bv.c(a));
            return;
        } else
        {
            bv.c(a).b(new ArrayList());
            bv.c(a).a();
            return;
        }
    }
}
