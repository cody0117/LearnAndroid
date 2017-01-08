// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.c.f;

// Referenced classes of package com.aadhk.restpos.d:
//            hd, gz

final class hb
    implements f
{

    final gz a;

    hb(gz gz1)
    {
        a = gz1;
        super();
    }

    public final void a()
    {
        (new d(new hd(a, (byte)0), gz.b(a), (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
