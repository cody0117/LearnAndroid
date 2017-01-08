// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.d.gz;
import com.aadhk.restpos.g.v;
import com.aadhk.restpos.util.e;
import com.aadhk.restpos.util.q;
import com.aadhk.restpos.util.r;
import java.util.Collections;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            ReceiptListActivity

final class cy
    implements c
{

    final ReceiptListActivity a;
    private Map b;
    private Order c;

    public cy(ReceiptListActivity receiptlistactivity, Order order)
    {
        a = receiptlistactivity;
        super();
        c = order;
    }

    public final void a()
    {
        b = ReceiptListActivity.a(a).a(c);
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            Order order = (Order)b.get("serviceData");
            java.util.List list = order.getOrderItems();
            if (a.c.m())
            {
                Collections.sort(list, new e());
            }
            order.setOrderItems(list);
            FragmentTransaction fragmenttransaction = ReceiptListActivity.b(a).beginTransaction();
            ReceiptListActivity.a(a, new gz());
            Bundle bundle = new Bundle();
            bundle.putParcelable("bundleOrder", order);
            com.aadhk.restpos.ReceiptListActivity.c(a).setArguments(bundle);
            if (ReceiptListActivity.d(a))
            {
                a.findViewById(0x7f09005e).setVisibility(0);
                fragmenttransaction.replace(0x7f09005e, com.aadhk.restpos.ReceiptListActivity.c(a));
            } else
            {
                fragmenttransaction.replace(0x7f09005c, com.aadhk.restpos.ReceiptListActivity.c(a));
                fragmenttransaction.addToBackStack(null);
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
