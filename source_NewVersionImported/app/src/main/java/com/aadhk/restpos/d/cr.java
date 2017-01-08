// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Button;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.PaymentActivity;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.f.h;

// Referenced classes of package com.aadhk.restpos.d:
//            cd

final class cr
    implements f
{

    final String a[];
    final cd b;

    cr(cd cd1, String as[])
    {
        b = cd1;
        a = as;
        super();
    }

    public final void a(Object obj)
    {
        int i;
        i = ((Integer)obj).intValue();
        cd.j(b).setText(a[((Integer)obj).intValue()]);
        if (i != 0) goto _L2; else goto _L1
_L1:
        cd.a(b, 0.0D);
        cd.b(b, 0.0D);
        cd.j(b).setText(0x7f0902bc);
_L4:
        if (cd.i(b).getDiscountAmt() > 0.0D)
        {
            int j = h.b(cd.i(b).getDiscountAmt(), cd.i(b).getSubTotal());
            cd.a(b, h.a(cd.n(b), 100 - j, cd.o(b)));
            cd.b(b, h.a(cd.p(b), 100 - j, cd.o(b)));
        }
        if (cd.l(b).isIncludeService())
        {
            cd.q(b);
            cd.i(b).setServiceAmt(h.a(cd.i(b).getSubTotal(), cd.i(b).getDiscountAmt(), cd.n(b) + cd.p(b), cd.l(b).getServiceFee(), cd.o(b), cd.r(b)));
            cd.s(b).setText(0x7f0902a7);
        }
        cd.t(b);
        cd.g(b).c();
        return;
_L2:
        if (i == 1)
        {
            cd.a(b, cd.k(b));
            cd.b(b, 0.0D);
            cd.j(b).setText(cd.l(b).getTax1Name());
        } else
        if (i == 2)
        {
            cd.a(b, 0.0D);
            cd.b(b, cd.m(b));
            cd.j(b).setText(cd.l(b).getTax2Name());
        } else
        if (i == 3)
        {
            cd.a(b, cd.k(b));
            cd.b(b, cd.m(b));
            cd.j(b).setText(0x7f0902bd);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
