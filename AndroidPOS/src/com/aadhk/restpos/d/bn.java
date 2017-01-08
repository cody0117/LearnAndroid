// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.os.AsyncTask;
import android.widget.TextView;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.LoginActivity;
import com.aadhk.restpos.util.r;

// Referenced classes of package com.aadhk.restpos.d:
//            bm, bp

final class bn
    implements f
{

    final bm a;

    bn(bm bm1)
    {
        a = bm1;
        super();
    }

    public final void a(Object obj)
    {
        String s = (String)obj;
        bm.a(a).a("serverIp", s);
        bm.b(a).a();
        bm.a(a, bm.b(a).b());
        bm.c(a).setText(0x7f08025d);
        (new d(new bp(a, (byte)0), bm.b(a), (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
