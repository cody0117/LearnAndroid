// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.bean.Currency;
import com.aadhk.restpos.g.b;
import com.aadhk.restpos.util.q;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            CurrencyActivity

final class d
    implements c
{

    final CurrencyActivity a;
    private Map b;
    private Currency c;

    public d(CurrencyActivity currencyactivity, Currency currency)
    {
        a = currencyactivity;
        super();
        c = currency;
    }

    public final void a()
    {
        b = CurrencyActivity.a(a).b(c);
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            CurrencyActivity.a(a, (List)b.get("serviceData"));
            com.aadhk.restpos.CurrencyActivity.b(a);
        } else
        {
            if ("9".equals(s))
            {
                Toast.makeText(a, 0x7f080248, 1).show();
                return;
            }
            if ("11".equals(s))
            {
                q.a(a);
                Toast.makeText(a, 0x7f080246, 1).show();
                return;
            }
        }
    }
}
