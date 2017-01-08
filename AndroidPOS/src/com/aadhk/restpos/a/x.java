// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.view.View;
import com.aadhk.product.library.b.a;
import com.aadhk.restpos.bean.OrderItem;

// Referenced classes of package com.aadhk.restpos.a:
//            q, y

final class x
    implements android.view.View.OnClickListener
{

    final OrderItem a;
    final q b;

    x(q q1, OrderItem orderitem)
    {
        b = q1;
        a = orderitem;
        super();
    }

    public final void onClick(View view)
    {
        a a1 = new a(q.b(b), q.e(b));
        a1.a();
        a1.a(new y(this));
        a1.show();
    }
}
