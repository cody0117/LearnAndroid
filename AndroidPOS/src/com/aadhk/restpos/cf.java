// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.User;
import com.aadhk.restpos.c.bc;
import com.aadhk.restpos.g.q;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            PayInOutActivity

final class cf
    implements c
{

    final PayInOutActivity a;
    private Map b;

    private cf(PayInOutActivity payinoutactivity)
    {
        a = payinoutactivity;
        super();
    }

    cf(PayInOutActivity payinoutactivity, byte byte0)
    {
        this(payinoutactivity);
    }

    public final void a()
    {
        b = PayInOutActivity.d(a).a(a, a.j);
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            PayInOutActivity.b(a, (String)b.get("serviceLastTime"));
            com.aadhk.restpos.PayInOutActivity.c(a, (String)b.get("serviceSencondLastTime"));
            PayInOutActivity.a(a, (List)b.get("serviceData"));
            PayInOutActivity payinoutactivity = a;
            com.aadhk.restpos.bean.POSPrinterSetting posprintersetting = PayInOutActivity.e(a);
            String s1 = PayInOutActivity.f(a);
            String s2 = PayInOutActivity.b(a);
            List list = PayInOutActivity.g(a);
            a.d.getAccount();
            (new bc(payinoutactivity, posprintersetting, s1, s2, list, a.e.getEmail(), a.c)).show();
            return;
        }
        if ("10".equals(s) || "11".equals(s))
        {
            com.aadhk.restpos.util.q.a(a);
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
