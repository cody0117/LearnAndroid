// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.g.ab;
import com.aadhk.restpos.util.q;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            jh

final class jt
    implements c
{

    final jh a;
    private Map b;

    private jt(jh jh1)
    {
        a = jh1;
        super();
    }

    jt(jh jh1, byte byte0)
    {
        this(jh1);
    }

    public final void a()
    {
        b = jh.b(a).a(jh.d(a).getId());
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            jh.a(a, (List)b.get("serviceData"));
            jh.e(a);
            return;
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(jh.a(a));
            Toast.makeText(jh.a(a), 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(jh.a(a), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(jh.a(a), 0x7f080247, 1).show();
            return;
        }
    }
}
