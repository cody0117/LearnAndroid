// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.product.library.b.f;
import com.aadhk.restpos.PaymentActivity;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.f.k;

// Referenced classes of package com.aadhk.restpos.d:
//            ci, cd

final class cj
    implements f
{

    final ci a;

    cj(ci ci1)
    {
        a = ci1;
        super();
    }

    public final void a(Object obj)
    {
        if (cd.i(a.a).isHasUnpaidBill())
        {
            k.a(cd.g(a.a), cd.i(a.a), true);
            return;
        }
        if (cd.i(a.a).getTableId() == 0L)
        {
            cd.g(a.a).d();
            return;
        } else
        {
            k.c(cd.g(a.a));
            return;
        }
    }
}
