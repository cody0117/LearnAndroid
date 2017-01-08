// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.bean.Table;

// Referenced classes of package com.aadhk.restpos:
//            bh, MgrTableActivity

final class av
    implements f
{

    final MgrTableActivity a;

    av(MgrTableActivity mgrtableactivity)
    {
        a = mgrtableactivity;
        super();
    }

    public final void a(Object obj)
    {
        Table table = (Table)obj;
        (new d(new bh(a, table), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
