// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.b.f;

// Referenced classes of package com.aadhk.restpos.d:
//            cz, cf

final class cm
    implements f
{

    final cf a;

    cm(cf cf1)
    {
        a = cf1;
        super();
    }

    public final void a(Object obj)
    {
        boolean aflag[] = (boolean[])obj;
        int i;
        byte byte0;
        byte byte1;
        if (aflag[0])
        {
            i = 1;
        } else
        {
            i = 0;
        }
        if (aflag[1])
        {
            byte0 = 2;
        } else
        {
            byte0 = 0;
        }
        if (aflag[2])
        {
            byte1 = 3;
        } else
        {
            byte1 = 0;
        }
        (new d(new cz(a, i, byte0, byte1), a.a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
