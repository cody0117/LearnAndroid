// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.bean.Discount;
import com.aadhk.restpos.c.f;

// Referenced classes of package com.aadhk.restpos:
//            q, k

final class l
    implements f
{

    final k a;

    l(k k1)
    {
        a = k1;
        super();
    }

    public final void a()
    {
        (new d(new q(a.b, a.a.getId()), a.b, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}