// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.c.bo;
import com.aadhk.restpos.g.m;
import com.aadhk.restpos.util.q;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            MgrTableGroupActivity

final class bq
    implements c
{

    final MgrTableGroupActivity a;
    private Map b;

    private bq(MgrTableGroupActivity mgrtablegroupactivity)
    {
        a = mgrtablegroupactivity;
        super();
    }

    bq(MgrTableGroupActivity mgrtablegroupactivity, byte byte0)
    {
        this(mgrtablegroupactivity);
    }

    public final void a()
    {
        b = MgrTableGroupActivity.a(a).a();
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            com.aadhk.restpos.MgrTableGroupActivity.c(a).clear();
            MgrTableGroupActivity.b(a);
            return;
        }
        if ("25".equals(s))
        {
            bo bo1 = new bo(a);
            bo1.a(0x7f0800cb);
            bo1.show();
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
