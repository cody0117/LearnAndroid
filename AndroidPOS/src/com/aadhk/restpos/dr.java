// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.b.f;

// Referenced classes of package com.aadhk.restpos:
//            eg, TakeOrderActivity

final class dr
    implements f
{

    final TakeOrderActivity a;

    dr(TakeOrderActivity takeorderactivity)
    {
        a = takeorderactivity;
        super();
    }

    public final void a(Object obj)
    {
        (new d(new eg(a, (String)obj), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
