// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.g.k;
import com.aadhk.restpos.util.q;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            cf

final class cw
    implements c
{

    final cf a;
    private Map b;

    private cw(cf cf1)
    {
        a = cf1;
        super();
    }

    cw(cf cf1, byte byte0)
    {
        this(cf1);
    }

    public final void a()
    {
        b = cf.a().c(cf.b(a));
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            List list = (List)b.get("serviceData");
            cf.a(a, list);
            return;
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(a.a);
            Toast.makeText(a.a, 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(a.a, 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(a.a, 0x7f080247, 1).show();
            return;
        }
    }
}
