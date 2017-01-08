// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.product.library.b.f;
import com.aadhk.restpos.PaymentActivity;
import com.aadhk.restpos.bean.Order;

// Referenced classes of package com.aadhk.restpos.d:
//            ey

final class fi
    implements f
{

    final ey a;

    fi(ey ey1)
    {
        a = ey1;
        super();
    }

    public final void a(Object obj)
    {
        double d = ((Double)obj).doubleValue();
        ey.d(a).setServiceAmt(d);
        ey.e(a);
        com.aadhk.restpos.d.ey.f(a);
        ey.c(a).e();
    }
}
