// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.bean.Category;
import com.aadhk.restpos.g.j;
import com.aadhk.restpos.util.q;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            MgrCategoryActivity

final class ai
    implements c
{

    final MgrCategoryActivity a;
    private Map b;
    private Category c;

    public ai(MgrCategoryActivity mgrcategoryactivity, Category category)
    {
        a = mgrcategoryactivity;
        super();
        c = category;
    }

    public final void a()
    {
        b = MgrCategoryActivity.b(a).b(c);
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            MgrCategoryActivity.a(a, (List)b.get("serviceData"));
            com.aadhk.restpos.MgrCategoryActivity.c(a);
            return;
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(a);
            Toast.makeText(a, 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(a, 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(a, 0x7f080247, 1).show();
            return;
        }
    }
}
