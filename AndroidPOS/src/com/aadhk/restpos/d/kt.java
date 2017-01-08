// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.UserActivity;
import com.aadhk.restpos.g.ae;
import com.aadhk.restpos.util.q;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            kq

final class kt
    implements c
{

    final kq a;
    private Map b;

    private kt(kq kq1)
    {
        a = kq1;
        super();
    }

    kt(kq kq1, byte byte0)
    {
        this(kq1);
    }

    public final void a()
    {
        b = kq.e(a).a();
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            kq.a(a, (List)b.get("serviceData"));
            kq.f(a).b(kq.a(a));
            kq.g(a);
            return;
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(kq.f(a));
            Toast.makeText(kq.f(a), 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(kq.f(a), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(kq.f(a), 0x7f080247, 1).show();
            return;
        }
    }
}
