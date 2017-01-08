// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.text.TextUtils;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.bean.CloseOutCashRegister;
import com.aadhk.restpos.g.p;
import com.aadhk.restpos.util.o;
import com.aadhk.restpos.util.q;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            PayCloseOutActivity

final class cb
    implements c
{

    final PayCloseOutActivity a;
    private Map b;

    private cb(PayCloseOutActivity paycloseoutactivity)
    {
        a = paycloseoutactivity;
        super();
    }

    cb(PayCloseOutActivity paycloseoutactivity, byte byte0)
    {
        this(paycloseoutactivity);
    }

    public final void a()
    {
        PayCloseOutActivity.a(a, (new StringBuilder()).append(PayCloseOutActivity.a(a).getDate()).append(" ").append(PayCloseOutActivity.a(a).getTime()).toString());
        b = com.aadhk.restpos.PayCloseOutActivity.c(a).a(PayCloseOutActivity.b(a));
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            PayCloseOutActivity.b(a, (String)b.get("serviceLastTime"));
            PayCloseOutActivity.a(a, ((Double)b.get("serviceStartAmount")).doubleValue());
            PayCloseOutActivity.b(a, ((Double)b.get("servicePayingAmount")).doubleValue());
            com.aadhk.restpos.PayCloseOutActivity.c(a, ((Double)b.get("servicePayoutAmount")).doubleValue());
            PayCloseOutActivity.d(a, ((Double)b.get("serviceOrdersTotalAmount")).doubleValue());
            if (!TextUtils.isEmpty(PayCloseOutActivity.d(a)))
            {
                PayCloseOutActivity.a(a, PayCloseOutActivity.d(a).split(" "));
            }
            if (PayCloseOutActivity.d(a) != null)
            {
                PayCloseOutActivity.f(a).setText((new StringBuilder()).append(o.e(PayCloseOutActivity.e(a)[0], a.k)).append(" ").append(PayCloseOutActivity.e(a)[1]).toString());
            } else
            {
                PayCloseOutActivity.f(a).setText(0x7f08010f);
            }
            PayCloseOutActivity.g(a).setText(o.e(PayCloseOutActivity.a(a).getDate(), a.k));
            com.aadhk.restpos.PayCloseOutActivity.h(a).setText(PayCloseOutActivity.a(a).getTime());
            PayCloseOutActivity.j(a).setText(h.b(PayCloseOutActivity.i(a)));
            PayCloseOutActivity.l(a).setText(com.aadhk.restpos.util.p.a(a.j, PayCloseOutActivity.k(a), a.i));
            PayCloseOutActivity.n(a).setText(com.aadhk.restpos.util.p.a(a.j, PayCloseOutActivity.m(a), a.i));
            com.aadhk.restpos.PayCloseOutActivity.p(a).setText(com.aadhk.restpos.util.p.a(a.j, com.aadhk.restpos.PayCloseOutActivity.o(a), a.i));
            com.aadhk.restpos.PayCloseOutActivity.q(a).setText(com.aadhk.restpos.util.p.a(a.j, 0.0D, a.i));
            PayCloseOutActivity.r(a).setText(a.i);
            PayCloseOutActivity.s(a).setText(a.i);
            PayCloseOutActivity.t(a).setText(a.i);
            PayCloseOutActivity.u(a);
            PayCloseOutActivity.v(a);
            return;
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(a);
            Toast.makeText(a, 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
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
