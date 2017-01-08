// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.bean.Category;

// Referenced classes of package com.aadhk.restpos:
//            an, MgrCategoryActivity

final class ad
    implements f
{

    final Category a;
    final MgrCategoryActivity b;

    ad(MgrCategoryActivity mgrcategoryactivity, Category category)
    {
        b = mgrcategoryactivity;
        a = category;
        super();
    }

    public final void a(Object obj)
    {
        a.setName((String)obj);
        (new d(new an(b, a), b, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
