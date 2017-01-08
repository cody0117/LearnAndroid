// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.bean.Note;

// Referenced classes of package com.aadhk.restpos:
//            em, VoidReasonActivity

final class el
    implements f
{

    final VoidReasonActivity a;

    el(VoidReasonActivity voidreasonactivity)
    {
        a = voidreasonactivity;
        super();
    }

    public final void a(Object obj)
    {
        Note note = (Note)obj;
        (new d(new em(a, note), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
