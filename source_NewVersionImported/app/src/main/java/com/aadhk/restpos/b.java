// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.aadhk.product.library.bean.Currency;
import com.aadhk.restpos.b.d;
import com.aadhk.restpos.c.q;

// Referenced classes of package com.aadhk.restpos:
//            CurrencyActivity

final class b
    implements q
{

    final String a;
    final CurrencyActivity b;

    b(CurrencyActivity currencyactivity, String s)
    {
        b = currencyactivity;
        a = s;
        super();
    }

    public final void a(Currency currency)
    {
        CurrencyActivity.a(b).a(currency, a);
        CurrencyActivity.b(b);
    }
}
