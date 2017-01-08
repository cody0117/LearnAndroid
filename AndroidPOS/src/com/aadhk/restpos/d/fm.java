// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.e.f;
import com.aadhk.restpos.e.g;
import com.aadhk.restpos.g.s;
import com.aadhk.restpos.util.q;
import com.bugsense.trace.BugSenseHandler;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            ey

final class fm
    implements c
{

    final ey a;
    private Map b;
    private int c;

    fm(ey ey1)
    {
        a = ey1;
        super();
    }

    public final void a()
    {
        try
        {
            ey.o(a).a(ey.l(a), ey.d(a), ey.m(a), ey.n(a));
            b = ey.p(a).b(ey.d(a).getId());
            c = 0;
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            c = f.a(exception);
            BugSenseHandler.sendException(exception);
            return;
        }
    }

    public final void b()
    {
        if (c != 0)
        {
            Toast.makeText(com.aadhk.restpos.d.ey.c(a), c, 1).show();
        } else
        {
            String s1 = (String)b.get("serviceStatus");
            if (!"1".equals(s1))
            {
                if ("10".equals(s1) || "11".equals(s1))
                {
                    q.a(com.aadhk.restpos.d.ey.c(a));
                    Toast.makeText(com.aadhk.restpos.d.ey.c(a), 0x7f080246, 1).show();
                    return;
                }
                if ("9".equals(s1))
                {
                    Toast.makeText(com.aadhk.restpos.d.ey.c(a), 0x7f080248, 1).show();
                    return;
                } else
                {
                    Toast.makeText(com.aadhk.restpos.d.ey.c(a), 0x7f080247, 1).show();
                    return;
                }
            }
        }
    }
}
