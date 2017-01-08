// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.g.s;
import com.aadhk.restpos.util.q;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            du

final class ee
    implements c
{

    final du a;
    private Map b;

    private ee(du du1)
    {
        a = du1;
        super();
    }

    ee(du du1, byte byte0)
    {
        this(du1);
    }

    public final void a()
    {
        b = com.aadhk.restpos.d.du.q(a).a(du.a(a));
    }

    public final void b()
    {
        String s1 = (String)b.get("serviceStatus");
        if ("1".equals(s1))
        {
            if (du.a(a).isHasUnpaidBill())
            {
                du.e(a).b();
                return;
            }
            if (du.a(a).getTableId() == 0L)
            {
                du.e(a).h();
                return;
            } else
            {
                q.b(du.e(a));
                return;
            }
        }
        if ("10".equals(s1) || "11".equals(s1))
        {
            q.a(du.e(a));
            Toast.makeText(du.e(a), 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s1))
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
