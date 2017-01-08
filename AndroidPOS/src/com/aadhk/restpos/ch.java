// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.d.ey;
import com.aadhk.restpos.d.fp;
import com.aadhk.restpos.g.s;
import com.aadhk.restpos.util.e;
import com.aadhk.restpos.util.q;
import com.aadhk.restpos.util.r;
import java.util.Collections;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            PaymentActivity

final class ch
    implements c
{

    final PaymentActivity a;
    private Map b;

    private ch(PaymentActivity paymentactivity)
    {
        a = paymentactivity;
        super();
    }

    ch(PaymentActivity paymentactivity, byte byte0)
    {
        this(paymentactivity);
    }

    public final void a()
    {
        if (PaymentActivity.a(a).getSplitType() == 2)
        {
            b = PaymentActivity.b(a).a(PaymentActivity.a(a).getId(), PaymentActivity.a(a).getBillId());
            return;
        } else
        {
            b = PaymentActivity.b(a).a(PaymentActivity.a(a).getId());
            return;
        }
    }

    public final void b()
    {
        String s1 = (String)b.get("serviceStatus");
        if ("1".equals(s1))
        {
            PaymentActivity.a(a, (List)b.get("serviceData"));
            PaymentActivity.a(a, com.aadhk.restpos.PaymentActivity.c(a));
            if (a.c.m())
            {
                Collections.sort(PaymentActivity.d(a), new e());
            }
            PaymentActivity.a(a, a.getSupportFragmentManager());
            FragmentTransaction fragmenttransaction = com.aadhk.restpos.PaymentActivity.e(a).beginTransaction();
            PaymentActivity.a(a, new ey());
            fragmenttransaction.replace(0x7f090060, PaymentActivity.f(a));
            if (PaymentActivity.g(a))
            {
                PaymentActivity.a(a, new fp());
                fragmenttransaction.replace(0x7f09005f, PaymentActivity.h(a));
            }
            fragmenttransaction.commit();
            return;
        }
        if ("11".equals(s1))
        {
            q.a(a);
            Toast.makeText(a, 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s1))
        {
            Toast.makeText(a, 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(a, 0x7f080247, 1).show();
            return;
        }
    }
}
