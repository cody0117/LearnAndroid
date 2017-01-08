// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.b.f;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            cy, cf

final class cn
    implements f
{

    final List a;
    final cf b;

    cn(cf cf1, List list)
    {
        b = cf1;
        a = list;
        super();
    }

    public final void a(Object obj)
    {
        int i = ((Integer)obj).intValue();
        if (i > 0)
        {
            int j = i - 1;
            i = ((Integer)a.get(j)).intValue();
        }
        (new d(new cy(b, i), b.a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
