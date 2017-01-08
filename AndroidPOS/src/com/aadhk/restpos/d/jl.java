// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.SplitBill;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            jh, jv, ju

final class jl
    implements f
{

    final jh a;

    jl(jh jh1)
    {
        a = jh1;
        super();
    }

    public final void a(Object obj)
    {
        SplitBill splitbill = (SplitBill)jh.c(a).get(((Integer)obj).intValue());
        if (com.aadhk.restpos.d.jh.d(a).getSplitType() == 2)
        {
            (new d(new jv(a, splitbill, com.aadhk.restpos.d.jh.d(a).getId(), splitbill.getId()), jh.a(a), (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
        } else
        if (com.aadhk.restpos.d.jh.d(a).getSplitType() == 1)
        {
            (new d(new ju(a, splitbill, com.aadhk.restpos.d.jh.d(a).getId()), jh.a(a), (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
            return;
        }
    }
}
