// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.product.library.b.f;
import com.aadhk.restpos.PaymentActivity;
import com.aadhk.restpos.bean.Order;

// Referenced classes of package com.aadhk.restpos.d:
//            ey

final class fj
    implements f
{

    final ey a;

    fj(ey ey1)
    {
        a = ey1;
        super();
    }

    public final void a(Object obj)
    {
        int i = ((Integer)obj).intValue();
        if (i != 0) goto _L2; else goto _L1
_L1:
        ey.d(a).setTax1Amt(0.0D);
        ey.d(a).setTax2Amt(0.0D);
        ey.d(a).setTax3Amt(0.0D);
_L4:
        com.aadhk.restpos.d.ey.f(a);
        ey.c(a).e();
        return;
_L2:
        if (i == 1)
        {
            ey.d(a).setTax1Amt(ey.g(a));
            ey.d(a).setTax2Amt(0.0D);
            ey.d(a).setTax3Amt(0.0D);
        } else
        if (i == 2)
        {
            ey.d(a).setTax1Amt(0.0D);
            ey.d(a).setTax3Amt(0.0D);
            ey.d(a).setTax2Amt(ey.h(a));
        } else
        if (i == 3)
        {
            ey.d(a).setTax1Amt(0.0D);
            ey.d(a).setTax2Amt(0.0D);
            ey.d(a).setTax3Amt(ey.i(a));
        } else
        if (i == 4)
        {
            ey.d(a).setTax1Amt(ey.g(a));
            ey.d(a).setTax2Amt(ey.h(a));
            ey.d(a).setTax3Amt(ey.i(a));
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
