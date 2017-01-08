// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.b.g;
import com.aadhk.restpos.bean.Modifier;

// Referenced classes of package com.aadhk.restpos.d:
//            dj, db

final class dd
    implements g
{

    final Modifier a;
    final db b;

    dd(db db1, Modifier modifier)
    {
        b = db1;
        a = modifier;
        super();
    }

    public final void a()
    {
        (new d(new dj(b, a), db.b(b), (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
