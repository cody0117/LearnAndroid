// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.g.ad;
import com.aadhk.restpos.util.q;
import com.aadhk.restpos.util.r;
import java.util.ArrayList;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            en

final class ep
    implements c
{

    final en a;
    private Map b;

    private ep(en en1)
    {
        a = en1;
        super();
    }

    ep(en en1, byte byte0)
    {
        this(en1);
    }

    public final void a()
    {
        if (en.a(a).getId() == 0L)
        {
            b = en.d(a).a(en.a(a), en.b(a), com.aadhk.restpos.d.en.c(a).m());
            return;
        } else
        {
            en.a(a).setOrderCount(1 + en.a(a).getOrderCount());
            b = en.d(a).a(en.a(a), en.b(a));
            return;
        }
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            com.aadhk.restpos.d.en.c(a).a(en.b(a), false);
            if (en.e(a).i() && en.a(a).getTableId() != 0L)
            {
                q.b(com.aadhk.restpos.d.en.c(a));
                return;
            }
            if (en.a(a).getId() == 0L)
            {
                en.a(a, (Order)b.get("serviceData"));
                com.aadhk.restpos.d.en.c(a).b(en.a(a));
            }
            com.aadhk.restpos.d.en.c(a).b(new ArrayList());
            com.aadhk.restpos.d.en.c(a).b();
            return;
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(com.aadhk.restpos.d.en.c(a));
            Toast.makeText(com.aadhk.restpos.d.en.c(a), 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(com.aadhk.restpos.d.en.c(a), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(com.aadhk.restpos.d.en.c(a), 0x7f080247, 1).show();
            return;
        }
    }
}
