// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.CompanyActivity;
import com.aadhk.restpos.g.a;
import com.aadhk.restpos.util.q;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            a

final class d
    implements c
{

    final com.aadhk.restpos.d.a a;
    private Map b;

    private d(com.aadhk.restpos.d.a a1)
    {
        a = a1;
        super();
    }

    d(com.aadhk.restpos.d.a a1, byte byte0)
    {
        this(a1);
    }

    public final void a()
    {
        b = com.aadhk.restpos.d.a.b(a).b(com.aadhk.restpos.d.a.a(a));
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            com.aadhk.restpos.d.a.c(a).finish();
            return;
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(com.aadhk.restpos.d.a.c(a));
            Toast.makeText(com.aadhk.restpos.d.a.c(a), 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(com.aadhk.restpos.d.a.c(a), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(com.aadhk.restpos.d.a.c(a), 0x7f080247, 1).show();
            return;
        }
    }
}
