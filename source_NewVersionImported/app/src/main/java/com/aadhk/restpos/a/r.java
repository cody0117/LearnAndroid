// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.view.View;
import com.aadhk.product.library.b.a;
import com.aadhk.restpos.bean.OrderItem;

// Referenced classes of package com.aadhk.restpos.a:
//            m, s

final class r
    implements android.view.View.OnClickListener
{

    final OrderItem a;
    final m b;

    r(m m1, OrderItem orderitem)
    {
        b = m1;
        a = orderitem;
        super();
    }

    public final void onClick(View view)
    {
        a a1 = new a(m.c(b), m.d(b));
        a1.a();
        a1.a(new s(this));
        a1.show();
    }
}
