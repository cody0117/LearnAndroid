// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.aadhk.product.library.b.f;
import com.aadhk.restpos.b.h;
import com.aadhk.restpos.bean.Discount;
import com.aadhk.restpos.c.u;

// Referenced classes of package com.aadhk.restpos:
//            DiscountActivity

final class v
    implements f
{

    final u a;
    final DiscountActivity b;

    v(DiscountActivity discountactivity, u u1)
    {
        b = discountactivity;
        a = u1;
        super();
    }

    public final void a(Object obj)
    {
        Discount discount = (Discount)obj;
        DiscountActivity.a(b).a(discount);
        b.a();
        a.dismiss();
    }
}
