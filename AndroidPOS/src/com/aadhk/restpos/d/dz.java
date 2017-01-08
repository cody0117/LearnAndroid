// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.c.aa;

// Referenced classes of package com.aadhk.restpos.d:
//            el, du

final class dz
    implements aa
{

    final OrderItem a;
    final du b;

    dz(du du1, OrderItem orderitem)
    {
        b = du1;
        a = orderitem;
        super();
    }

    public final void a(double d1)
    {
        (new d(new el(b, a, d1), du.e(b), (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
