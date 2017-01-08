// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.product.library.b.f;
import com.aadhk.restpos.PaymentActivity;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Discount;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.f.h;

// Referenced classes of package com.aadhk.restpos.d:
//            cd

final class cf
    implements f
{

    final cd a;

    cf(cd cd1)
    {
        a = cd1;
        super();
    }

    public final void a(Object obj)
    {
        cd.a(a, (Discount)obj);
        double d;
        if (cd.u(a) != null)
        {
            if (cd.u(a).isPer())
            {
                d = cd.u(a).getAmount();
                cd.i(a).setDiscountAmt(h.a(cd.i(a).getSubTotal(), d, cd.o(a)));
            } else
            {
                cd.i(a).setDiscountAmt(cd.u(a).getAmount());
                d = h.b(cd.i(a).getDiscountAmt(), cd.i(a).getSubTotal());
            }
        } else
        {
            cd.i(a).setDiscountAmt(0.0D);
            d = 0.0D;
        }
        if (cd.n(a) > 0.0D)
        {
            cd.a(a, h.a(cd.i(a).getTax1Amt(), 100D - d, cd.o(a)));
        }
        if (cd.p(a) > 0.0D)
        {
            cd.b(a, h.a(cd.i(a).getTax2Amt(), 100D - d, cd.o(a)));
        }
        if (cd.l(a).isIncludeService())
        {
            cd.i(a).setServiceAmt(h.a(cd.i(a).getSubTotal(), cd.i(a).getDiscountAmt(), cd.n(a) + cd.p(a), cd.l(a).getServiceFee(), cd.o(a), cd.r(a)));
        }
        cd.t(a);
        cd.g(a).c();
    }
}
