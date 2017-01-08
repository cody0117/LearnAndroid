// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.b.f;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.bean.SplitBill;

// Referenced classes of package com.aadhk.restpos.d:
//            jw, jh

final class ji
    implements f
{

    final SplitBill a;
    final int b;
    final jh c;

    ji(jh jh1, SplitBill splitbill, int i)
    {
        c = jh1;
        a = splitbill;
        b = i;
        super();
    }

    public final void a(Object obj)
    {
        a.setAmount(h.d(obj.toString()));
        (new d(new jw(c, a, b), jh.a(c), (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
