// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.c.ao;

// Referenced classes of package com.aadhk.restpos.d:
//            jg, it

final class iz
    implements ao
{

    final it a;

    iz(it it1)
    {
        a = it1;
        super();
    }

    public final void a()
    {
        (new d(new jg(a, (byte)0), it.b(a), (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
