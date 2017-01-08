// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.bean.PaymentMethod;

// Referenced classes of package com.aadhk.restpos:
//            cm, PaymentMethodActivity

final class cl
    implements f
{

    final PaymentMethodActivity a;

    cl(PaymentMethodActivity paymentmethodactivity)
    {
        a = paymentmethodactivity;
        super();
    }

    public final void a(Object obj)
    {
        PaymentMethod paymentmethod = (PaymentMethod)obj;
        (new d(new cm(a, paymentmethod), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
