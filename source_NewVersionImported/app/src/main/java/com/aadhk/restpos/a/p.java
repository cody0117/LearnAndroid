// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.view.View;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.d.bv;

// Referenced classes of package com.aadhk.restpos.a:
//            m

final class p
    implements android.view.View.OnClickListener
{

    final OrderItem a;
    final int b;
    final m c;

    p(m m1, OrderItem orderitem, int i)
    {
        c = m1;
        a = orderitem;
        b = i;
        super();
    }

    public final void onClick(View view)
    {
        a.setQty(1 + a.getQty());
        if (a.getNum() > 1)
        {
            a.setNum(-1 + a.getNum());
            m.a(c).a();
            c.notifyDataSetChanged();
            m.c(c).b(m.b(c));
            m.c(c).d();
        } else
        if (a.getNum() == 1)
        {
            m.a(c, b);
            m.a(c).a();
            c.notifyDataSetChanged();
            m.c(c).b(m.b(c));
            m.c(c).d();
            return;
        }
    }
}
