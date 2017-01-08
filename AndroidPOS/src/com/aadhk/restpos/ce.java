// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.bean.CashRegister;
import com.aadhk.restpos.g.q;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            PayInOutActivity

final class ce
    implements c
{

    final PayInOutActivity a;
    private Map b;
    private CashRegister c;

    public ce(PayInOutActivity payinoutactivity, CashRegister cashregister)
    {
        a = payinoutactivity;
        super();
        c = cashregister;
    }

    public final void a()
    {
        b = PayInOutActivity.d(a).a(c);
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            a.a();
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
