// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.MgrItemActivity;
import com.aadhk.restpos.c.bo;
import com.aadhk.restpos.g.k;
import com.aadhk.restpos.util.q;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            cf, cq

final class cu
    implements c
{

    final cf a;
    private Map b;

    private cu(cf cf1)
    {
        a = cf1;
        super();
    }

    cu(cf cf1, byte byte0)
    {
        this(cf1);
    }

    public final void a()
    {
        b = cf.a().b(cf.b(a));
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("25".equals(s))
        {
            bo bo1 = new bo(a.a);
            bo1.a(0x7f0800cc);
            bo1.show();
            return;
        }
        if ("1".equals(s))
        {
            com.aadhk.restpos.d.cf.c(a).notifyDataSetChanged();
            a.a.a();
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
