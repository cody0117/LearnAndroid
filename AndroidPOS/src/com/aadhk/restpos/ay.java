// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.bean.Table;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            MgrTableActivity, ba

final class ay
    implements f
{

    final MgrTableActivity a;

    ay(MgrTableActivity mgrtableactivity)
    {
        a = mgrtableactivity;
        super();
    }

    public final void a(Object obj)
    {
        Table table = (Table)obj;
        if (MgrTableActivity.a(a).size() > 0)
        {
            table.setSequence(1 + ((Table)MgrTableActivity.a(a).get(0)).getSequence());
        }
        (new d(new ba(a, table), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
