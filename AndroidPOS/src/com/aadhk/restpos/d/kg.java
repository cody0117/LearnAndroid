// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.a.aj;
import com.aadhk.restpos.g.ac;
import com.aadhk.restpos.util.q;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            ke

final class kg
    implements c
{

    final ke a;
    private Map b;

    private kg(ke ke1)
    {
        a = ke1;
        super();
    }

    kg(ke ke1, byte byte0)
    {
        this(ke1);
    }

    public final void a()
    {
        b = ke.b(a).a(ke.a(a));
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            ke.a(a, (List)b.get("serviceData"));
            ke.d(a).a(com.aadhk.restpos.d.ke.c(a));
            ke.d(a).notifyDataSetChanged();
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
