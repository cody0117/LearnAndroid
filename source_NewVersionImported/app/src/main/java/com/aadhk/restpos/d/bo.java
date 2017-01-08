// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.product.library.a.b;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.a.j;
import com.aadhk.restpos.b.n;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.f.i;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            bk

final class bo
    implements b
{

    final OrderItem a;
    final bk b;

    bo(bk bk1, OrderItem orderitem)
    {
        b = bk1;
        a = orderitem;
        super();
    }

    public final void a()
    {
        a.setStatus(3);
        a.setStartTime(i.c());
        bk.e(b).a(a);
        if (!bk.f(b).isEmpty())
        {
            ArrayList arraylist = new ArrayList();
            arraylist.add(a);
            bk.d(b).a(arraylist, false);
        }
    }

    public final void b()
    {
        bk.g(b).notifyDataSetChanged();
    }
}
