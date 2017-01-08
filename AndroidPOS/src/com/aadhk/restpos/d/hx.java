// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.ReservationActivity;
import com.aadhk.restpos.g.x;
import com.aadhk.restpos.util.q;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            hu

final class hx
    implements c
{

    final hu a;
    private Map b;

    private hx(hu hu1)
    {
        a = hu1;
        super();
    }

    hx(hu hu1, byte byte0)
    {
        this(hu1);
    }

    public final void a()
    {
        b = hu.d(a).a(hu.b(a), com.aadhk.restpos.d.hu.c(a).c());
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            Map map = (Map)b.get("serviceData");
            com.aadhk.restpos.d.hu.c(a).a(map);
            hu.e(a);
            return;
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(com.aadhk.restpos.d.hu.c(a));
            Toast.makeText(com.aadhk.restpos.d.hu.c(a), 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(com.aadhk.restpos.d.hu.c(a), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(com.aadhk.restpos.d.hu.c(a), 0x7f080247, 1).show();
            return;
        }
    }
}
