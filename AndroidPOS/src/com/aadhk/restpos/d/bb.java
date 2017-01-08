// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.bean.KitchenNote;
import com.aadhk.restpos.c.f;

// Referenced classes of package com.aadhk.restpos.d:
//            bi, az

final class bb
    implements f
{

    final az a;

    bb(az az1)
    {
        a = az1;
        super();
    }

    public final void a()
    {
        (new d(new bi(a, az.a(a).getId()), az.b(a), (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
