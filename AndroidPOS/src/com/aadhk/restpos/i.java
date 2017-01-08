// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.bean.Customer;
import com.aadhk.restpos.g.d;
import com.aadhk.restpos.util.q;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            DeliveryActivity

final class i
    implements c
{

    final DeliveryActivity a;
    private Map b;

    private i(DeliveryActivity deliveryactivity)
    {
        a = deliveryactivity;
        super();
    }

    i(DeliveryActivity deliveryactivity, byte byte0)
    {
        this(deliveryactivity);
    }

    public final void a()
    {
        b = DeliveryActivity.a(a).a();
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            DeliveryActivity.a(a, (List)b.get("serviceData"));
            DeliveryActivity.b(a, new ArrayList());
            Customer customer;
            for (Iterator iterator = DeliveryActivity.b(a).iterator(); iterator.hasNext(); com.aadhk.restpos.DeliveryActivity.c(a).add(customer.getTel()))
            {
                customer = (Customer)iterator.next();
            }

            ArrayAdapter arrayadapter = new ArrayAdapter(a, 0x1090003, com.aadhk.restpos.DeliveryActivity.c(a));
            com.aadhk.restpos.DeliveryActivity.d(a).setAdapter(arrayadapter);
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
