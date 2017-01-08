// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.c.bm;

// Referenced classes of package com.aadhk.restpos:
//            TableListActivity

final class dl
    implements bm
{

    final TableListActivity a;

    dl(TableListActivity tablelistactivity)
    {
        a = tablelistactivity;
        super();
    }

    public final void a()
    {
        (new d(a.a, a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
