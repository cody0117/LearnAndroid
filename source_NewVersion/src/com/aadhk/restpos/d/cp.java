// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.content.res.Resources;
import android.os.AsyncTask;
import com.aadhk.product.library.a.a;
import com.aadhk.restpos.c.aw;

// Referenced classes of package com.aadhk.restpos.d:
//            cd

final class cp
    implements aw
{

    final cd a;

    cp(cd cd1)
    {
        a = cd1;
        super();
    }

    public final void a()
    {
        a a1 = new a(cd.g(a), a.d, cd.h(a).getString(0x7f090178));
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
