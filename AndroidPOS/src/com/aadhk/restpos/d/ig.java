// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.ReservationActivity;
import com.aadhk.restpos.g.x;
import com.aadhk.restpos.util.q;
import java.util.ArrayList;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            ia

final class ig
    implements c
{

    final ia a;
    private Map b;

    private ig(ia ia1)
    {
        a = ia1;
        super();
    }

    ig(ia ia1, byte byte0)
    {
        this(ia1);
    }

    public final void a()
    {
        b = com.aadhk.restpos.d.ia.c(a).a().a(ia.d(a));
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            ia.a(a, (Map)b.get("serviceData"));
            ia.a(a, new ArrayList(ia.b(a).keySet()));
            ia.e(a);
            ia.f(a);
            return;
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(com.aadhk.restpos.d.ia.c(a));
            Toast.makeText(com.aadhk.restpos.d.ia.c(a), 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(com.aadhk.restpos.d.ia.c(a), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(com.aadhk.restpos.d.ia.c(a), 0x7f080247, 1).show();
            return;
        }
    }
}
