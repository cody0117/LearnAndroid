// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.res.Resources;
import com.aadhk.product.library.b.g;
import com.aadhk.restpos.b.b;
import com.aadhk.restpos.bean.Category;
import com.aadhk.restpos.c.ax;

// Referenced classes of package com.aadhk.restpos:
//            MgrCategoryActivity, an

final class am
    implements g
{

    final Category a;
    final MgrCategoryActivity b;

    am(MgrCategoryActivity mgrcategoryactivity, Category category)
    {
        b = mgrcategoryactivity;
        a = category;
        super();
    }

    public final void a()
    {
        String s = (new StringBuilder(" c.rowid=")).append(a.getId()).toString();
        if (MgrCategoryActivity.a(b).a(s))
        {
            ax ax1 = new ax(b);
            ax1.a(b.b.getString(0x7f0900c0));
            ax1.show();
            return;
        } else
        {
            com.aadhk.restpos.c.g g1 = new com.aadhk.restpos.c.g(b);
            String s1 = b.b.getString(0x7f090297);
            Object aobj[] = new Object[1];
            aobj[0] = a.getName();
            g1.setTitle(String.format(s1, aobj));
            g1.a(new an(this));
            g1.show();
            return;
        }
    }
}
