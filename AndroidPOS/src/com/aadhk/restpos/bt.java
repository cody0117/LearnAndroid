// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.view.MenuItem;
import android.widget.GridView;
import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.a.ah;
import com.aadhk.restpos.bean.Item;
import com.aadhk.restpos.g.o;
import com.aadhk.restpos.util.q;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            OrderListActivity

final class bt
    implements c
{

    final OrderListActivity a;
    private Map b;
    private Item c;

    public bt(OrderListActivity orderlistactivity, Item item)
    {
        a = orderlistactivity;
        super();
        c = item;
    }

    public final void a()
    {
        b = OrderListActivity.b(a).a(c.getId());
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            OrderListActivity.a(a, (List)b.get("serviceData"));
            OrderListActivity.a(a, new ah(a, com.aadhk.restpos.OrderListActivity.c(a)));
            OrderListActivity.e(a).setAdapter(OrderListActivity.d(a));
            OrderListActivity.g(a).setVisible(false);
            OrderListActivity.h(a).setVisible(true);
            OrderListActivity.h(a).setTitle(c.getName());
            OrderListActivity.a(a, c.getId());
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
