// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.bean.Note;
import com.aadhk.restpos.c.f;

// Referenced classes of package com.aadhk.restpos:
//            en, ej

final class ek
    implements f
{

    final ej a;

    ek(ej ej1)
    {
        a = ej1;
        super();
    }

    public final void a()
    {
        (new d(new en(a.b, a.a.getId()), a.b, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
