// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Button;
import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.g.ad;
import com.aadhk.restpos.util.e;
import com.aadhk.restpos.util.q;
import com.aadhk.restpos.util.r;
import java.util.Collections;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            du

final class eh
    implements c
{

    final du a;
    private Map b;

    private eh(du du1)
    {
        a = du1;
        super();
    }

    eh(du du1, byte byte0)
    {
        this(du1);
    }

    public final void a()
    {
        b = du.b(a).a(du.a(a).getId());
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            du.a(a, (List)b.get("serviceData"));
            if (com.aadhk.restpos.d.du.c(a).m())
            {
                Collections.sort(du.d(a), new e());
            }
            com.aadhk.restpos.d.du.e(a).a(du.d(a));
            if (du.a(a).getSplitType() == 0)
            {
                du.f(a).setVisibility(0);
            } else
            {
                du.f(a).setVisibility(8);
            }
            du.g(a);
            du.h(a);
            return;
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(com.aadhk.restpos.d.du.e(a));
            Toast.makeText(com.aadhk.restpos.d.du.e(a), 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(com.aadhk.restpos.d.du.e(a), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(com.aadhk.restpos.d.du.e(a), 0x7f080247, 1).show();
            return;
        }
    }
}
