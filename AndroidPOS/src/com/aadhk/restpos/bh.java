// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.bean.Table;
import com.aadhk.restpos.g.n;
import com.aadhk.restpos.util.q;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            MgrTableActivity

final class bh
    implements c
{

    final MgrTableActivity a;
    private Table b;
    private Map c;

    public bh(MgrTableActivity mgrtableactivity, Table table)
    {
        a = mgrtableactivity;
        super();
        b = table;
    }

    public final void a()
    {
        c = com.aadhk.restpos.MgrTableActivity.c(a).b(b);
    }

    public final void b()
    {
        String s = (String)c.get("serviceStatus");
        if ("1".equals(s))
        {
            MgrTableActivity.a(a, (List)c.get("serviceData"));
            MgrTableActivity.d(a);
            return;
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(a);
            Toast.makeText(a, 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(a, 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(a, 0x7f080247, 1).show();
            return;
        }
    }
}
