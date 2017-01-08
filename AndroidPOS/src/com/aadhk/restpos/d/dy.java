// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.bean.OrderItem;

// Referenced classes of package com.aadhk.restpos.d:
//            ec, dv, du

final class dy
    implements f
{

    final OrderItem a;
    final dv b;

    dy(dv dv1, OrderItem orderitem)
    {
        b = dv1;
        a = orderitem;
        super();
    }

    public final void a(Object obj)
    {
        (new d(new ec(b.a, a, 0), du.e(b.a), (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
