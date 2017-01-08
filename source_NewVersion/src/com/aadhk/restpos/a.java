// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.aadhk.product.library.bean.Currency;
import com.aadhk.restpos.b.d;
import com.aadhk.restpos.c.o;

// Referenced classes of package com.aadhk.restpos:
//            CurrencyActivity

final class a
    implements o
{

    final CurrencyActivity a;

    a(CurrencyActivity currencyactivity)
    {
        a = currencyactivity;
        super();
    }

    public final void a(Currency currency)
    {
        CurrencyActivity.a(a).a(currency);
        CurrencyActivity.b(a);
    }
}
