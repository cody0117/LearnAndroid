// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.SplitBillActivity;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.g.ab;
import com.aadhk.restpos.util.q;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            jh

final class jr
    implements c
{

    final jh a;
    private Map b;
    private long c;
    private long d;
    private boolean e;

    public jr(jh jh1, long l, long l1, boolean flag)
    {
        a = jh1;
        super();
        c = l;
        d = l1;
        e = flag;
    }

    public final void a()
    {
        b = jh.b(a).a(c, d, e);
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            jh.a(a, (List)b.get("serviceData"));
            if (com.aadhk.restpos.d.jh.c(a).isEmpty())
            {
                jh.d(a).setSplitType((short)0);
            }
            jh.e(a);
            if (jh.f(a) == 2)
            {
                jh.a(a).a();
            }
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
