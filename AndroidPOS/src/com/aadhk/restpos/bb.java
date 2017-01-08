// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.g.n;
import com.aadhk.restpos.util.q;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            MgrTableActivity

final class bb
    implements c
{

    final MgrTableActivity a;
    private Map b;
    private List c;

    public bb(MgrTableActivity mgrtableactivity, List list)
    {
        a = mgrtableactivity;
        super();
        c = list;
    }

    public final void a()
    {
        b = com.aadhk.restpos.MgrTableActivity.c(a).a(c);
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            MgrTableActivity.a(a, (List)b.get("serviceData"));
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
