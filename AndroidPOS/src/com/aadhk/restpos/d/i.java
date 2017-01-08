// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.CustomerActivity;
import com.aadhk.restpos.util.q;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            f

final class i
    implements c
{

    final f a;
    private Map b;

    private i(f f1)
    {
        a = f1;
        super();
    }

    i(f f1, byte byte0)
    {
        this(f1);
    }

    public final void a()
    {
        b = f.b(a).a(f.a(a));
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            List list = (List)b.get("serviceData");
            com.aadhk.restpos.d.f.c(a).b(list);
            f.d(a);
            return;
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(com.aadhk.restpos.d.f.c(a));
            Toast.makeText(com.aadhk.restpos.d.f.c(a), 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(com.aadhk.restpos.d.f.c(a), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(com.aadhk.restpos.d.f.c(a), 0x7f080247, 1).show();
            return;
        }
    }
}
