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

final class q
    implements android.view.View.OnClickListener
{

    final OrderItem a;
    final m b;

    q(m m1, OrderItem orderitem)
    {
        b = m1;
        a = orderitem;
        super();
    }

    public final void onClick(View view)
    {
        a.setNum(1 + a.getNum());
        m.a(b).a();
        b.notifyDataSetChanged();
        m.c(b).b(m.b(b));
        m.c(b).d();
        if (a.isWarn())
        {
            m.c(b).a(a.getItemId());
        }
    }
}
