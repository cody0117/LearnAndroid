// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.b.g;
import com.aadhk.restpos.bean.TableGroup;

// Referenced classes of package com.aadhk.restpos:
//            bp, MgrTableGroupActivity

final class bk
    implements g
{

    final TableGroup a;
    final MgrTableGroupActivity b;

    bk(MgrTableGroupActivity mgrtablegroupactivity, TableGroup tablegroup)
    {
        b = mgrtablegroupactivity;
        a = tablegroup;
        super();
    }

    public final void a()
    {
        (new d(new bp(b, a.getTableGroupId()), b, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
