// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.bean.Item;
import com.aadhk.restpos.c.cv;

// Referenced classes of package com.aadhk.restpos:
//            bt, OrderListActivity

final class bs
    implements cv
{

    final OrderListActivity a;

    bs(OrderListActivity orderlistactivity)
    {
        a = orderlistactivity;
        super();
    }

    public final void a(Item item)
    {
        (new d(new bt(a, item), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
