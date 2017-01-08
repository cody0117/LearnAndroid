// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderItem;

// Referenced classes of package com.aadhk.restpos.d:
//            ek, ef, du

final class eg
    implements f
{

    final ef a;

    eg(ef ef1)
    {
        a = ef1;
        super();
    }

    public final void a(Object obj)
    {
        Order order = (Order)obj;
        (new d(new ek(a.a, order.getId(), ef.a(a).getId(), ef.b(a).getId()), du.e(a.a), (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
