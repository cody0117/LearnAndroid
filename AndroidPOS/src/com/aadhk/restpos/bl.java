// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.c.f;

// Referenced classes of package com.aadhk.restpos:
//            bq, MgrTableGroupActivity

final class bl
    implements f
{

    final MgrTableGroupActivity a;

    bl(MgrTableGroupActivity mgrtablegroupactivity)
    {
        a = mgrtablegroupactivity;
        super();
    }

    public final void a()
    {
        (new d(new bq(a, (byte)0), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}