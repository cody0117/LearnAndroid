// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.os.AsyncTask;
import android.view.View;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.SplitBill;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            jm, jh, jr

final class jn
    implements android.view.View.OnClickListener
{

    final int a;
    final SplitBill b;
    final jm c;

    jn(jm jm1, int i, SplitBill splitbill)
    {
        c = jm1;
        a = i;
        b = splitbill;
        super();
    }

    public final void onClick(View view)
    {
        jh.c(c.a).remove(a);
        (new d(new jr(c.a, b.getId(), com.aadhk.restpos.d.jh.d(c.a).getId(), jh.c(c.a).isEmpty()), jh.a(c.a), (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
