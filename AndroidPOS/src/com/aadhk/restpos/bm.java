// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.bean.TableGroup;

// Referenced classes of package com.aadhk.restpos:
//            bn, MgrTableGroupActivity

final class bm
    implements f
{

    final MgrTableGroupActivity a;

    bm(MgrTableGroupActivity mgrtablegroupactivity)
    {
        a = mgrtablegroupactivity;
        super();
    }

    public final void a(Object obj)
    {
        TableGroup tablegroup = new TableGroup();
        tablegroup.setName((String)obj);
        (new d(new bn(a, tablegroup), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
