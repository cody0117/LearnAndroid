// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.MgrItemActivity;
import com.aadhk.restpos.bean.Item;
import com.aadhk.restpos.c.bo;
import com.aadhk.restpos.g.k;
import com.aadhk.restpos.util.q;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            bu

final class cd
    implements c
{

    final bu a;
    private Map b;

    private cd(bu bu1)
    {
        a = bu1;
        super();
    }

    cd(bu bu1, byte byte0)
    {
        this(bu1);
    }

    public final void a()
    {
        b = com.aadhk.restpos.d.bu.k(a).a(bu.g(a).getId());
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("25".equals(s))
        {
            bo bo1 = new bo(bu.l(a));
            bo1.a(a.getString(0x7f0800cc));
            bo1.show();
            return;
        }
        if ("1".equals(s))
        {
            bu.l(a).a();
            return;
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(bu.l(a));
            Toast.makeText(bu.l(a), 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(bu.l(a), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(bu.l(a), 0x7f080247, 1).show();
            return;
        }
    }
}
