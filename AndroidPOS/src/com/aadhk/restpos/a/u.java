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

final class u
    implements android.view.View.OnClickListener
{

    final OrderItem a;
    final q b;

    u(q q1, OrderItem orderitem)
    {
        b = q1;
        a = orderitem;
        super();
    }

    public final void onClick(View view)
    {
        a.setQty(1 + a.getQty());
        q.a(b).a();
        b.notifyDataSetChanged();
        q.b(b).a(a);
    }
}
