// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import com.aadhk.product.library.b.f;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.bean.Item;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.a:
//            e

final class h
    implements f
{

    final Item a;
    final e b;

    h(e e1, Item item)
    {
        b = e1;
        a = item;
        super();
    }

    public final void a(Object obj)
    {
        a.setNum(1 + a.getNum());
        e.a(b).add(e.c(b));
        b.notifyDataSetChanged();
        e.b(b).b(e.a(b));
        e.b(b).c();
    }
}
