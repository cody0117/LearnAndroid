// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.bean.CashRegister;

// Referenced classes of package com.aadhk.restpos.d:
//            ev, eq

final class er
    implements f
{

    final eq a;

    er(eq eq1)
    {
        a = eq1;
        super();
    }

    public final void a(Object obj)
    {
        CashRegister cashregister = (CashRegister)obj;
        (new d(new ev(a, cashregister), eq.e(a), (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
