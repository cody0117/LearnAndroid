// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.c.f;

// Referenced classes of package com.aadhk.restpos.d:
//            cu, cf

final class co
    implements f
{

    final cf a;

    co(cf cf1)
    {
        a = cf1;
        super();
    }

    public final void a()
    {
        (new d(new cu(a, (byte)0), a.a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
