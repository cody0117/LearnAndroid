// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.c.dv;
import com.aadhk.restpos.util.o;

// Referenced classes of package com.aadhk.restpos:
//            TakeOrderActivity, eh

final class dw
    implements dv
{

    final TakeOrderActivity a;

    dw(TakeOrderActivity takeorderactivity)
    {
        a = takeorderactivity;
        super();
    }

    public final void a(String s)
    {
        TakeOrderActivity.b(a).setEndTime(o.c());
        TakeOrderActivity.b(a).setCancelPerson(com.aadhk.restpos.TakeOrderActivity.d(a));
        TakeOrderActivity.b(a).setCancelReason(s);
        TakeOrderActivity.b(a).setCashierName(com.aadhk.restpos.TakeOrderActivity.d(a));
        TakeOrderActivity.b(a).setAmount(0.0D);
        (new d(new eh(a, (byte)0), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
