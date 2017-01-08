// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.os.AsyncTask;
import com.aadhk.product.library.a.e;

// Referenced classes of package com.aadhk.restpos.d:
//            kg, kh

final class ki
    implements Runnable
{

    final kh a;

    ki(kh kh1)
    {
        a = kh1;
        super();
    }

    public final void run()
    {
        (new e(new kg(a.b, (byte)0))).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
