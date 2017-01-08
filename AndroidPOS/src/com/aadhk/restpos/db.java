// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.bean.ServiceFee;

// Referenced classes of package com.aadhk.restpos:
//            dk, ServiceFeeActivity

final class db
    implements f
{

    final ServiceFeeActivity a;

    db(ServiceFeeActivity servicefeeactivity)
    {
        a = servicefeeactivity;
        super();
    }

    public final void a(Object obj)
    {
        ServiceFee servicefee = (ServiceFee)obj;
        (new d(new dk(a, servicefee), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
