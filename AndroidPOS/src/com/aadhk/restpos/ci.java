// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.bean.PaymentMethod;

// Referenced classes of package com.aadhk.restpos:
//            cp, PaymentMethodActivity

final class ci
    implements f
{

    final PaymentMethodActivity a;

    ci(PaymentMethodActivity paymentmethodactivity)
    {
        a = paymentmethodactivity;
        super();
    }

    public final void a(Object obj)
    {
        PaymentMethod paymentmethod = (PaymentMethod)obj;
        if (paymentmethod.isBeDefault())
        {
            (new d(new cp(a, paymentmethod), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
        }
    }
}
