// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.bean.Currency;
import com.aadhk.restpos.c.l;

// Referenced classes of package com.aadhk.restpos:
//            d, CurrencyActivity

final class a
    implements l
{

    final CurrencyActivity a;

    a(CurrencyActivity currencyactivity)
    {
        a = currencyactivity;
        super();
    }

    public final void a(Currency currency)
    {
        (new d(new com.aadhk.restpos.d(a, currency), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
