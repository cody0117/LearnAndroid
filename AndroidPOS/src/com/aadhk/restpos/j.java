// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.bean.Discount;

// Referenced classes of package com.aadhk.restpos:
//            s, DiscountActivity

final class j
    implements f
{

    final DiscountActivity a;

    j(DiscountActivity discountactivity)
    {
        a = discountactivity;
        super();
    }

    public final void a(Object obj)
    {
        Discount discount = (Discount)obj;
        (new d(new s(a, discount), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
