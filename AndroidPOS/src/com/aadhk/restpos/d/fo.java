// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.os.AsyncTask;
import com.aadhk.product.library.a.e;
import com.aadhk.restpos.PaymentActivity;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.c.bv;
import com.aadhk.restpos.util.q;

// Referenced classes of package com.aadhk.restpos.d:
//            fn, ey

final class fo
    implements bv
{

    final fn a;

    fo(fn fn1)
    {
        a = fn1;
        super();
    }

    public final void a()
    {
        if (ey.d(a.a).isHasUnpaidBill())
        {
            q.a(ey.c(a.a), ey.d(a.a), null, true);
            ey.c(a.a).finish();
            return;
        }
        if (ey.d(a.a).getTableId() == 0L)
        {
            ey.c(a.a).f();
            return;
        } else
        {
            q.b(ey.c(a.a));
            return;
        }
    }

    public final void b()
    {
        ey.l(a.a).setOpenDrawer(false);
        (new e(a.a.b)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
        a();
    }
}
