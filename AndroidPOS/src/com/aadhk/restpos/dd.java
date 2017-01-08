// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.bean.ServiceFee;
import com.aadhk.restpos.c.f;

// Referenced classes of package com.aadhk.restpos:
//            di, dc

final class dd
    implements f
{

    final dc a;

    dd(dc dc1)
    {
        a = dc1;
        super();
    }

    public final void a()
    {
        (new d(new di(a.b, a.a.getId()), a.b, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
