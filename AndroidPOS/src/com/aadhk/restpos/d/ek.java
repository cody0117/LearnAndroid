// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.g.ad;
import com.aadhk.restpos.util.q;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            du

final class ek
    implements c
{

    final du a;
    private Map b;
    private long c;
    private long d;
    private long e;

    public ek(du du1, long l, long l1, long l2)
    {
        a = du1;
        super();
        c = l;
        d = l1;
        e = l2;
    }

    public final void a()
    {
        b = du.b(a).a(c, d, e);
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            du.a(a, (List)b.get("serviceData"));
            du.g(a);
            du.h(a);
            return;
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
