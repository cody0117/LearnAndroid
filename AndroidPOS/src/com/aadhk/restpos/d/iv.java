// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.c.af;

// Referenced classes of package com.aadhk.restpos.d:
//            jf, it

final class iv
    implements af
{

    final it a;

    iv(it it1)
    {
        a = it1;
        super();
    }

    public final void a(String s, String s1, String s2)
    {
        (new d(new jf(a, s, s1, s2), it.b(a), (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
