// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.widget.Toast;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.bean.CashRegister;

// Referenced classes of package com.aadhk.restpos:
//            PayInOutActivity

final class bg
    implements f
{

    final PayInOutActivity a;

    bg(PayInOutActivity payinoutactivity)
    {
        a = payinoutactivity;
        super();
    }

    public final void a(Object obj)
    {
        CashRegister cashregister = (CashRegister)obj;
        PayInOutActivity.a(a, (new StringBuilder()).append(cashregister.getDate()).append(" ").append(cashregister.getTime()).toString());
        if (PayInOutActivity.b(a) != null)
        {
            if (!PayInOutActivity.b(a).equals(PayInOutActivity.c(a)))
            {
                if (PayInOutActivity.c(a).compareTo(PayInOutActivity.b(a)) <= 0)
                {
                    Toast.makeText(a, 0x7f0900db, 0).show();
                    return;
                }
            } else
            {
                Toast.makeText(a, 0x7f0900da, 0).show();
                return;
            }
        }
        PayInOutActivity.a(a, cashregister);
    }
}
