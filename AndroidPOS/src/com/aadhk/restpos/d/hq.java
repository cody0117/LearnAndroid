// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.ReportListActivity;
import com.aadhk.restpos.g.w;
import com.aadhk.restpos.util.q;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            hk

final class hq
    implements c
{

    final hk a;
    private Map b;

    private hq(hk hk1)
    {
        a = hk1;
        super();
    }

    hq(hk hk1, byte byte0)
    {
        this(hk1);
    }

    public final void a()
    {
        b = hk.o(a).a(hk.e(a), hk.d(a), hk.a(a), hk.h(a), hk.i(a), hk.j(a), (new StringBuilder()).append(hk.k(a)).append(" ").append(hk.l(a)).toString(), (new StringBuilder()).append(hk.m(a)).append(" ").append(hk.n(a)).toString());
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            hk.a(a, (List)b.get("serviceData"));
            hk.e(a).a(hk.p(a), (new StringBuilder()).append(hk.k(a)).append(" ").append(hk.l(a)).toString(), (new StringBuilder()).append(hk.m(a)).append(" ").append(hk.n(a)).toString());
            return;
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(hk.e(a));
            Toast.makeText(hk.e(a), 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(hk.e(a), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(hk.e(a), 0x7f080247, 1).show();
            return;
        }
    }
}
