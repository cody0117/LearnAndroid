// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.c.dt;

// Referenced classes of package com.aadhk.restpos.d:
//            du, em

final class eb
    implements dt
{

    final OrderItem a;
    final du b;

    eb(du du1, OrderItem orderitem)
    {
        b = du1;
        a = orderitem;
        super();
    }

    public final void a(String s, String s1)
    {
        a.setOrderId(du.a(b).getId());
        (new d(new em(b, a, s, s1), du.e(b), (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
