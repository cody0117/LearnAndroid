// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.util.q;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            j

final class p
    implements c
{

    final j a;
    private Map b;

    private p(j j1)
    {
        a = j1;
        super();
    }

    p(j j1, byte byte0)
    {
        this(j1);
    }

    public final void a()
    {
        b = j.i(a).a();
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            j.a(a, (List)b.get("serviceData"));
            j.j(a);
            return;
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(j.b(a));
            Toast.makeText(j.b(a), 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(j.b(a), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(j.b(a), 0x7f080247, 1).show();
            return;
        }
    }
}
