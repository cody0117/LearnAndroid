// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.g.g;
import com.aadhk.restpos.util.q;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            bk

final class bl
    implements c
{

    final bk a;
    private Map b;

    private bl(bk bk1)
    {
        a = bk1;
        super();
    }

    bl(bk bk1, byte byte0)
    {
        this(bk1);
    }

    public final void a()
    {
        b = bk.a(a).a();
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            bk.a(a, (List)b.get("serviceData"));
            bk.b(a);
            return;
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(com.aadhk.restpos.d.bk.c(a));
            Toast.makeText(com.aadhk.restpos.d.bk.c(a), 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(com.aadhk.restpos.d.bk.c(a), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(com.aadhk.restpos.d.bk.c(a), 0x7f080247, 1).show();
            return;
        }
    }
}
