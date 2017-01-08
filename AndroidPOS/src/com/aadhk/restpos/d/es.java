// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.b.g;
import com.aadhk.restpos.bean.CashRegister;

// Referenced classes of package com.aadhk.restpos.d:
//            et, eq

final class es
    implements g
{

    final CashRegister a;
    final eq b;

    es(eq eq1, CashRegister cashregister)
    {
        b = eq1;
        a = cashregister;
        super();
    }

    public final void a()
    {
        (new d(new et(b, a.getId()), eq.e(b), (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
