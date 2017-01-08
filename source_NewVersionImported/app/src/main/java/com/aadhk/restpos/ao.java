// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.aadhk.product.library.b.f;
import com.aadhk.restpos.b.b;
import com.aadhk.restpos.bean.Category;
import com.aadhk.restpos.c.r;

// Referenced classes of package com.aadhk.restpos:
//            MgrCategoryActivity

final class ao
    implements f
{

    final r a;
    final MgrCategoryActivity b;

    ao(MgrCategoryActivity mgrcategoryactivity, r r1)
    {
        b = mgrcategoryactivity;
        a = r1;
        super();
    }

    public final void a(Object obj)
    {
        Category category = new Category();
        category.setName((String)obj);
        MgrCategoryActivity.a(b).a(category);
        b.a();
        a.dismiss();
    }
}
