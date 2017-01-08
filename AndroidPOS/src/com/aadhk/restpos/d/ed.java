// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.a.n;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.g.ad;
import com.aadhk.restpos.util.o;
import com.aadhk.restpos.util.q;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            du

final class ed
    implements c
{

    final du a;
    private Map b;
    private OrderItem c;

    public ed(du du1, OrderItem orderitem)
    {
        a = du1;
        super();
        c = orderitem;
    }

    public final void a()
    {
        c.setStatus(3);
        c.setStartTime(o.c());
        b = du.b(a).a(c);
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            du.k(a).notifyDataSetChanged();
            return;
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(du.e(a));
            Toast.makeText(du.e(a), 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(du.e(a), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(du.e(a), 0x7f080247, 1).show();
            return;
        }
    }
}
