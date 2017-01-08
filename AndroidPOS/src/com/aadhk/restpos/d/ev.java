// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.PayInOutActivity;
import com.aadhk.restpos.bean.CashRegister;
import com.aadhk.restpos.g.q;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            eq

final class ev
    implements c
{

    final eq a;
    private Map b;
    private CashRegister c;

    public ev(eq eq1, CashRegister cashregister)
    {
        a = eq1;
        super();
        c = cashregister;
    }

    public final void a()
    {
        b = eq.e(a).c().b(c);
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            eq.e(a).a();
            return;
        }
        if ("10".equals(s) || "11".equals(s))
        {
            com.aadhk.restpos.util.q.a(eq.e(a));
            Toast.makeText(eq.e(a), 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(eq.e(a), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(eq.e(a), 0x7f080247, 1).show();
            return;
        }
    }
}
