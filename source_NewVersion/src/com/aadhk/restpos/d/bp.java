// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.restpos.a.j;
import com.aadhk.restpos.b.n;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.c.aa;
import com.aadhk.restpos.c.y;

// Referenced classes of package com.aadhk.restpos.d:
//            bk

final class bp
    implements aa
{

    final OrderItem a;
    final y b;
    final bk c;

    bp(bk bk1, OrderItem orderitem, y y1)
    {
        c = bk1;
        a = orderitem;
        b = y1;
        super();
    }

    public final void a(double d)
    {
        a.setItemPrice(d);
        bk.e(c).b(a);
        bk.g(c).notifyDataSetChanged();
        bk.h(c);
        b.dismiss();
    }
}
