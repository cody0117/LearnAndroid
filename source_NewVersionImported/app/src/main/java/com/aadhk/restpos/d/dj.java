// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.os.AsyncTask;
import com.aadhk.product.library.a.a;
import com.aadhk.restpos.c.i;

// Referenced classes of package com.aadhk.restpos.d:
//            di, dh

final class dj
    implements i
{

    final di a;

    dj(di di1)
    {
        a = di1;
        super();
    }

    public final void a()
    {
        a a1 = new a(a.a.h, a.a.m, a.a.getString(0x7f090177));
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            a1.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
            return;
        } else
        {
            a1.execute(null);
            return;
        }
    }
}
