// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.MgrItemActivity;
import com.aadhk.restpos.g.k;
import com.aadhk.restpos.util.q;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            cf, cq

final class da
    implements c
{

    final cf a;
    private Map b;
    private StringBuilder c;

    public da(cf cf1, StringBuilder stringbuilder)
    {
        a = cf1;
        super();
        c = stringbuilder;
    }

    public final void a()
    {
        b = cf.a().b(cf.b(a), c.toString());
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            com.aadhk.restpos.d.cf.c(a).notifyDataSetChanged();
            a.a.a();
            if (a.a.n())
            {
                a.a.a(null);
            } else
            {
                a.a.b();
            }
            Toast.makeText(a.a, a.getString(0x7f08028f), 0).show();
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