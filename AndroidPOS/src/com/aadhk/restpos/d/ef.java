// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.c.bo;
import com.aadhk.restpos.c.de;
import com.aadhk.restpos.g.ad;
import com.aadhk.restpos.util.q;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            du, eg

final class ef
    implements c
{

    final du a;
    private Map b;
    private OrderItem c;
    private Order d;

    public ef(du du1, OrderItem orderitem, Order order)
    {
        a = du1;
        super();
        c = orderitem;
        d = order;
    }

    static OrderItem a(ef ef1)
    {
        return ef1.c;
    }

    static Order b(ef ef1)
    {
        return ef1.d;
    }

    public final void a()
    {
        b = du.b(a).a(d.getTableName());
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            List list = (List)b.get("serviceData");
            if (list.isEmpty())
            {
                bo bo1 = new bo(du.e(a));
                bo1.a(du.e(a).getString(0x7f080268));
                bo1.show();
                return;
            } else
            {
                de de1 = new de(du.e(a), list, false);
                de1.setTitle(du.e(a).getString(0x7f080266));
                de1.a(new eg(this));
                de1.show();
                return;
            }
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
