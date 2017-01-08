// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.product.library.b.f;
import com.aadhk.restpos.PaymentActivity;
import com.aadhk.restpos.bean.Order;

// Referenced classes of package com.aadhk.restpos.d:
//            ey

final class fh
    implements f
{

    final ey a;

    fh(ey ey1)
    {
        a = ey1;
        super();
    }

    public final void a(Object obj)
    {
        ey.d(a).setReceiptNote((String)obj);
        ey.c(a).e();
    }
}
