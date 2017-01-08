// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.bean.Currency;
import com.aadhk.restpos.c.n;

// Referenced classes of package com.aadhk.restpos:
//            g, CurrencyActivity

final class b
    implements n
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
        (new d(new g(b, currency, a), b, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
