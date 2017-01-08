// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.restpos.PaymentActivity;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.c.cc;
import com.aadhk.restpos.util.m;

// Referenced classes of package com.aadhk.restpos.d:
//            ey

final class fl
    implements cc
{

    final ey a;

    fl(ey ey1)
    {
        a = ey1;
        super();
    }

    public final void a(double d, double d1)
    {
        ey.d(a).setDiscountAmt(d);
        if (ey.d(a).getTax1Amt() > 0.0D && !ey.j(a))
        {
            ey.d(a).setTax1Amt(m.a(ey.g(a), 100D - d1, ey.k(a)));
        }
        if (ey.d(a).getTax2Amt() > 0.0D && !ey.j(a))
        {
            ey.d(a).setTax2Amt(m.a(ey.h(a), 100D - d1, ey.k(a)));
        }
        if (ey.d(a).getTax3Amt() > 0.0D && !ey.j(a))
        {
            ey.d(a).setTax3Amt(m.a(ey.i(a), 100D - d1, ey.k(a)));
        }
        ey.d(a).setServiceAmt(m.a(ey.d(a).getServiceAmt(), 100D - d1, ey.k(a)));
        ey.f(a);
        ey.c(a).e();
    }
}
