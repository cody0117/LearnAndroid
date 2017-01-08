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

final class al
    implements f
{

    final Category a;
    final r b;
    final MgrCategoryActivity c;

    al(MgrCategoryActivity mgrcategoryactivity, Category category, r r1)
    {
        c = mgrcategoryactivity;
        a = category;
        b = r1;
        super();
    }

    public final void a(Object obj)
    {
        a.setName((String)obj);
        MgrCategoryActivity.a(c).b(a);
        c.a();
        b.dismiss();
    }
}
