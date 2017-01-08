// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import com.aadhk.product.library.b.f;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.bean.Item;

// Referenced classes of package com.aadhk.restpos.a:
//            h

final class l
    implements f
{

    final Item a;
    final h b;

    l(h h1, Item item)
    {
        b = h1;
        a = item;
        super();
    }

    public final void a(Object obj)
    {
        a.setOrderQty(1 + a.getOrderQty());
        b.notifyDataSetChanged();
        h.a(b).b(h.b(b));
        h.a(b).f();
    }
}
