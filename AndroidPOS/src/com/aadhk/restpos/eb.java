// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.d.ag;
import com.aadhk.restpos.d.al;
import com.aadhk.restpos.d.dr;
import com.aadhk.restpos.g.ad;
import com.aadhk.restpos.util.q;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            TakeOrderActivity

final class eb
    implements c
{

    final TakeOrderActivity a;
    private Map b;
    private Order c;

    public eb(TakeOrderActivity takeorderactivity, Order order)
    {
        a = takeorderactivity;
        super();
        c = order;
    }

    public final void a()
    {
        b = TakeOrderActivity.a(a).a(TakeOrderActivity.b(a), c, TakeOrderActivity.d(a));
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            TakeOrderActivity.a(a, (Order)b.get("serviceData"));
            Toast.makeText(a, 0x7f080262, 1).show();
            a.setTitle(TakeOrderActivity.b(a).getTableName());
            FragmentTransaction fragmenttransaction = TakeOrderActivity.h(a).beginTransaction();
            Bundle bundle = new Bundle();
            bundle.putBoolean("bundleOrdered", true);
            dr dr1 = new dr();
            dr1.setArguments(bundle);
            if (TakeOrderActivity.i(a))
            {
                fragmenttransaction.replace(0x7f09005f, dr1);
                if (TakeOrderActivity.j(a))
                {
                    TakeOrderActivity.a(a, new al());
                    fragmenttransaction.replace(0x7f090060, TakeOrderActivity.k(a));
                } else
                {
                    TakeOrderActivity.a(a, new ag());
                    fragmenttransaction.replace(0x7f090060, TakeOrderActivity.l(a));
                }
            } else
            {
                fragmenttransaction.replace(0x7f090060, dr1);
            }
            fragmenttransaction.commit();
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
