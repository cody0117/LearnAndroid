// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.g.q;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            PayInOutActivity

final class cg
    implements c
{

    final PayInOutActivity a;
    private Map b;

    private cg(PayInOutActivity payinoutactivity)
    {
        a = payinoutactivity;
        super();
    }

    cg(PayInOutActivity payinoutactivity, byte byte0)
    {
        this(payinoutactivity);
    }

    public final void a()
    {
        b = PayInOutActivity.d(a).a();
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            PayInOutActivity.b(a, (String)b.get("serviceLastTime"));
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