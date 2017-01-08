// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.SplitBillActivity;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.SplitBill;
import com.aadhk.restpos.g.ab;
import com.aadhk.restpos.util.q;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            jh

final class jv
    implements c
{

    final jh a;
    private Map b;
    private SplitBill c;
    private long d;
    private long e;

    public jv(jh jh1, SplitBill splitbill, long l, long l1)
    {
        a = jh1;
        super();
        c = splitbill;
        d = l;
        e = l1;
    }

    public final void a()
    {
        b = jh.b(a).a(d, e);
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            List list = (List)b.get("serviceData");
            jh.b(a, list);
            jh.d(a).setSubTotal(c.getAmount());
            jh.d(a).setTax1Amt(jh.g(a));
            jh.d(a).setTax2Amt(jh.h(a));
            jh.d(a).setBillId(c.getId());
            q.a(jh.a(a), jh.d(a), null);
            jh.a(a).finish();
            return;
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(jh.a(a));
            Toast.makeText(jh.a(a), 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(jh.a(a), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(jh.a(a), 0x7f080247, 1).show();
            return;
        }
    }
}
