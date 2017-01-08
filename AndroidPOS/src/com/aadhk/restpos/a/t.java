// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.view.View;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.d.en;

// Referenced classes of package com.aadhk.restpos.a:
//            q

final class t
    implements android.view.View.OnClickListener
{

    final OrderItem a;
    final int b;
    final q c;

    t(q q1, OrderItem orderitem, int i)
    {
        c = q1;
        a = orderitem;
        b = i;
        super();
    }

    public final void onClick(View view)
    {
        if (a.getQty() > 1)
        {
            a.setQty(-1 + a.getQty());
            q.a(c).a();
            c.notifyDataSetChanged();
            q.b(c).a(a);
        } else
        if (a.getQty() == 1)
        {
            q.a(c, b);
            q.a(c).a();
            c.notifyDataSetChanged();
            q.b(c).a(a);
            return;
        }
    }
}
