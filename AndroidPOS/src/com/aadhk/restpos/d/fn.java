// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.os.AsyncTask;
import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.product.library.a.e;
import com.aadhk.restpos.PaymentActivity;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderPayment;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.c.bu;
import com.aadhk.restpos.g.s;
import com.aadhk.restpos.util.p;
import com.aadhk.restpos.util.q;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            ey, fo

final class fn
    implements c
{

    final ey a;
    private Map b;

    private fn(ey ey1)
    {
        a = ey1;
        super();
    }

    fn(ey ey1, byte byte0)
    {
        this(ey1);
    }

    public final void a()
    {
        com.aadhk.restpos.d.ey.q(a);
        if (ey.r(a) && ey.l(a).isEnable())
        {
            (new e(a.c)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
        }
        b = com.aadhk.restpos.d.ey.p(a).a(ey.d(a));
    }

    public final void b()
    {
        String s1 = (String)b.get("serviceStatus");
        if ("1".equals(s1))
        {
            if (!com.aadhk.restpos.d.ey.c(a).isFinishing())
            {
                String s2 = p.a(ey.k(a), com.aadhk.restpos.d.ey.s(a).getAmount(), ey.t(a));
                String s3 = p.a(ey.k(a), com.aadhk.restpos.d.ey.s(a).getPaid(), ey.t(a));
                String s4 = p.a(ey.k(a), com.aadhk.restpos.d.ey.s(a).getChangeAmt(), ey.t(a));
                bu bu1 = new bu(com.aadhk.restpos.d.ey.c(a), s2, s3, s4, ey.l(a));
                bu1.a(new fo(this));
                bu1.show();
                return;
            }
            if (ey.d(a).isHasUnpaidBill())
            {
                q.a(com.aadhk.restpos.d.ey.c(a), ey.d(a), null, true);
                com.aadhk.restpos.d.ey.c(a).finish();
                return;
            }
            if (ey.d(a).getTableId() == 0L)
            {
                com.aadhk.restpos.d.ey.c(a).f();
                return;
            } else
            {
                q.b(com.aadhk.restpos.d.ey.c(a));
                return;
            }
        }
        if ("10".equals(s1) || "11".equals(s1))
        {
            q.a(com.aadhk.restpos.d.ey.c(a));
            Toast.makeText(com.aadhk.restpos.d.ey.c(a), 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s1))
        {
            Toast.makeText(com.aadhk.restpos.d.ey.c(a), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(com.aadhk.restpos.d.ey.c(a), 0x7f080247, 1).show();
            return;
        }
    }
}
