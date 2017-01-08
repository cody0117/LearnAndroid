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
//            jx

final class kc
    implements c
{

    final jx a;
    private Map b;
    private List c;
    private double d;

    public kc(jx jx1, List list, double d1)
    {
        a = jx1;
        super();
        c = list;
        d = d1;
    }

    public final void a()
    {
        b = jx.e(a).a(com.aadhk.restpos.d.jx.c(a).getId(), jx.d(a), c, d);
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            com.aadhk.restpos.d.jx.c(a).setSplitType((short)2);
            jx.k(a);
            jx.j(a).b();
            return;
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(jx.j(a));
            Toast.makeText(jx.j(a), 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(jx.j(a), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(jx.j(a), 0x7f080247, 1).show();
            return;
        }
    }
}
