// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.aadhk.product.library.b.f;
import com.aadhk.restpos.b.p;
import com.aadhk.restpos.bean.PaymentMethod;
import com.aadhk.restpos.c.bi;

// Referenced classes of package com.aadhk.restpos:
//            PaymentMethodActivity

final class bk
    implements f
{

    final bi a;
    final PaymentMethodActivity b;

    bk(PaymentMethodActivity paymentmethodactivity, bi bi1)
    {
        b = paymentmethodactivity;
        a = bi1;
        super();
    }

    public final void a(Object obj)
    {
        PaymentMethod paymentmethod = (PaymentMethod)obj;
        PaymentMethodActivity.a(b).a(paymentmethod);
        b.a();
        a.dismiss();
    }
}
