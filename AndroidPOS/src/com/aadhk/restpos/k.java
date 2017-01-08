// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.aadhk.product.library.b.g;
import com.aadhk.restpos.bean.Discount;
import com.aadhk.restpos.c.d;

// Referenced classes of package com.aadhk.restpos:
//            DiscountActivity, l

final class k
    implements g
{

    final Discount a;
    final DiscountActivity b;

    k(DiscountActivity discountactivity, Discount discount)
    {
        b = discountactivity;
        a = discount;
        super();
    }

    public final void a()
    {
        d d1 = new d(b);
        String s = b.getString(0x7f0802d8);
        Object aobj[] = new Object[1];
        aobj[0] = a.getReason();
        d1.setTitle(String.format(s, aobj));
        d1.a(new l(this));
        d1.show();
    }
}
