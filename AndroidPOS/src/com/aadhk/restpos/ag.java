// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.AsyncTask;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.bean.Category;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            MgrCategoryActivity, ai

final class ag
    implements f
{

    final MgrCategoryActivity a;

    ag(MgrCategoryActivity mgrcategoryactivity)
    {
        a = mgrcategoryactivity;
        super();
    }

    public final void a(Object obj)
    {
        Category category = new Category();
        category.setName((String)obj);
        if (MgrCategoryActivity.a(a).size() > 0)
        {
            category.setSequence(1 + ((Category)MgrCategoryActivity.a(a).get(0)).getSequence());
        }
        (new d(new ai(a, category), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
