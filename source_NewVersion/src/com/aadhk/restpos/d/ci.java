// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.product.library.a.b;
import com.aadhk.restpos.PaymentActivity;
import com.aadhk.restpos.b.w;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderPayment;
import com.aadhk.restpos.c.bd;
import com.aadhk.restpos.f.j;
import com.aadhk.restpos.f.k;

// Referenced classes of package com.aadhk.restpos.d:
//            cd, cj

final class ci
    implements b
{

    final cd a;

    ci(cd cd1)
    {
        a = cd1;
        super();
    }

    public final void a()
    {
        if (cd.i(a).getSplitType() == 0)
        {
            cd.A(a).b(cd.i(a));
            return;
        } else
        {
            cd.A(a).a(cd.i(a));
            return;
        }
    }

    public final void b()
    {
        String s = j.a(cd.o(a), cd.B(a).getAmount(), cd.C(a));
        String s1 = j.a(cd.o(a), cd.B(a).getPaid(), cd.C(a));
        String s2 = j.a(cd.o(a), cd.B(a).getChangeAmt(), cd.C(a));
        if (cd.B(a).getChangeAmt() != 0.0D)
        {
            bd bd1 = new bd(cd.g(a), s, s1, s2);
            bd1.a(new cj(this));
            bd1.show();
            return;
        }
        if (cd.i(a).isHasUnpaidBill())
        {
            k.a(cd.g(a), cd.i(a), true);
            return;
        }
        if (cd.i(a).getTableId() == 0L)
        {
            cd.g(a).d();
            return;
        } else
        {
            k.c(cd.g(a));
            return;
        }
    }
}
