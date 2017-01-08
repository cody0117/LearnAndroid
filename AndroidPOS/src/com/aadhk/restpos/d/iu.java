// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.c.au;

// Referenced classes of package com.aadhk.restpos.d:
//            jd, it

final class iu
    implements au
{

    final int a;
    final it b;

    iu(it it1, int i)
    {
        b = it1;
        a = i;
        super();
    }

    public final void a(Object obj)
    {
        (new d(new jd(b, (Company)obj, a), it.b(b), (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
