// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.SplitBill;

// Referenced classes of package com.aadhk.restpos.d:
//            jh, jp

final class jk
    implements f
{

    final jh a;

    jk(jh jh1)
    {
        a = jh1;
        super();
    }

    public final void a(Object obj)
    {
        SplitBill splitbill = new SplitBill();
        splitbill.setOrderId(com.aadhk.restpos.d.jh.d(a).getId());
        splitbill.setAmount(((Double)obj).doubleValue());
        (new d(new jp(a, splitbill), jh.a(a), (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
