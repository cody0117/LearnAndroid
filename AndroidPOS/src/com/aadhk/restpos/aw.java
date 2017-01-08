// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.b.g;
import com.aadhk.restpos.bean.Table;

// Referenced classes of package com.aadhk.restpos:
//            bf, MgrTableActivity

final class aw
    implements g
{

    final Table a;
    final MgrTableActivity b;

    aw(MgrTableActivity mgrtableactivity, Table table)
    {
        b = mgrtableactivity;
        a = table;
        super();
    }

    public final void a()
    {
        (new d(new bf(b, a.getId()), b, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
