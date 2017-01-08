// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.aadhk.product.library.bean.Currency;
import com.aadhk.restpos.c.p;

// Referenced classes of package com.aadhk.restpos:
//            CurrencyActivity

final class c
    implements p
{

    final Currency a;
    final CurrencyActivity b;

    c(CurrencyActivity currencyactivity, Currency currency)
    {
        b = currencyactivity;
        a = currency;
        super();
    }

    public final void a()
    {
        CurrencyActivity.a(b, a);
    }
}
