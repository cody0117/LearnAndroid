// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.bean.Order;

// Referenced classes of package com.aadhk.restpos:
//            TakeOrderActivity, ec

final class dt
    implements f
{

    final TakeOrderActivity a;

    dt(TakeOrderActivity takeorderactivity)
    {
        a = takeorderactivity;
        super();
    }

    public final void a(Object obj)
    {
        TakeOrderActivity.b(a).setPersonNum(Integer.parseInt(obj.toString()));
        (new d(new ec(a, TakeOrderActivity.b(a).getId(), TakeOrderActivity.b(a).getPersonNum()), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
