// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.g.v;
import com.aadhk.restpos.util.q;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            he

final class hh
    implements c
{

    final he a;
    private Map b;

    private hh(he he1)
    {
        a = he1;
        super();
    }

    hh(he he1, byte byte0)
    {
        this(he1);
    }

    public final void a()
    {
        b = he.e(a).a(he.a(a), he.b(a), com.aadhk.restpos.d.he.c(a), he.d(a));
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            he.a(a, (List)b.get("serviceData"));
            a.a();
            return;
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(he.f(a));
            Toast.makeText(he.f(a), 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(he.f(a), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(he.f(a), 0x7f080247, 1).show();
            return;
        }
    }
}
