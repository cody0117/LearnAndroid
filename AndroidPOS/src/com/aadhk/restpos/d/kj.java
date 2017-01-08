// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.g.ac;
import com.aadhk.restpos.util.q;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            ke

final class kj
    implements c
{

    final ke a;
    private Map b;
    private long c;

    public kj(ke ke1, long l)
    {
        a = ke1;
        super();
        c = l;
    }

    public final void a()
    {
        b = ke.b(a).a(c);
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            q.a(ke.e(a), (Order)b.get("serviceData"), null, true);
            return;
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(ke.e(a));
            Toast.makeText(ke.e(a), 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(ke.e(a), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(ke.e(a), 0x7f080247, 1).show();
            return;
        }
    }
}
