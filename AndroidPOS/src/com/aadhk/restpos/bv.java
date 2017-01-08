// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.widget.GridView;
import android.widget.TextView;
import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.a.ah;
import com.aadhk.restpos.g.o;
import com.aadhk.restpos.util.q;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            OrderListActivity

final class bv
    implements c
{

    final OrderListActivity a;
    private Map b;

    private bv(OrderListActivity orderlistactivity)
    {
        a = orderlistactivity;
        super();
    }

    bv(OrderListActivity orderlistactivity, byte byte0)
    {
        this(orderlistactivity);
    }

    public final void a()
    {
        b = OrderListActivity.b(a).b(OrderListActivity.a(a));
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            OrderListActivity.a(a, (List)b.get("serviceData"));
            TextView textview = (TextView)a.findViewById(0x7f09015f);
            if (com.aadhk.restpos.OrderListActivity.c(a).size() > 0)
            {
                textview.setVisibility(8);
            } else
            {
                textview.setVisibility(0);
            }
            OrderListActivity.a(a, new ah(a, com.aadhk.restpos.OrderListActivity.c(a)));
            OrderListActivity.e(a).setAdapter(OrderListActivity.d(a));
            OrderListActivity.f(a).addAll(com.aadhk.restpos.OrderListActivity.c(a));
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
