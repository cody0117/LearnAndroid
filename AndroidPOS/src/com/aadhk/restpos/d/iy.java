// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.bean.License;
import com.aadhk.restpos.c.cr;

// Referenced classes of package com.aadhk.restpos.d:
//            jc, it

final class iy
    implements cr
{

    final it a;

    iy(it it1)
    {
        a = it1;
        super();
    }

    public final void a(License license)
    {
        (new d(new jc(a, license), it.b(a), (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
