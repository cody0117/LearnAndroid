// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.b.f;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.bean.Order;

// Referenced classes of package com.aadhk.restpos.d:
//            jh, jq

final class jj
    implements f
{

    final jh a;

    jj(jh jh1)
    {
        a = jh1;
        super();
    }

    public final void a(Object obj)
    {
        int i = h.e((String)obj);
        jh.a(a, jh.a(a, i));
        com.aadhk.restpos.d.jh.d(a).setSplitType((short)1);
        (new d(new jq(a, (byte)0), jh.a(a), (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
