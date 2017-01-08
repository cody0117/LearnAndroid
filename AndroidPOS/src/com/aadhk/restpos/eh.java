// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.e.f;
import com.aadhk.restpos.e.g;
import com.aadhk.restpos.g.ad;
import com.aadhk.restpos.util.q;
import com.aadhk.restpos.util.r;
import com.bugsense.trace.BugSenseHandler;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            TakeOrderActivity

final class eh
    implements c
{

    final TakeOrderActivity a;
    private Map b;
    private int c;

    private eh(TakeOrderActivity takeorderactivity)
    {
        a = takeorderactivity;
        super();
    }

    eh(TakeOrderActivity takeorderactivity, byte byte0)
    {
        this(takeorderactivity);
    }

    public final void a()
    {
        b = TakeOrderActivity.a(a).a(TakeOrderActivity.b(a));
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if (!"1".equals(s)) goto _L2; else goto _L1
_L1:
        if (!a.c.k() || TakeOrderActivity.e(a).isEmpty()) goto _L4; else goto _L3
_L3:
        for (Iterator iterator = com.aadhk.restpos.TakeOrderActivity.f(a).iterator(); iterator.hasNext(); ((OrderItem)iterator.next()).setStatus(1)) { }
          goto _L5
        Exception exception;
        exception;
        c = f.a(exception);
        BugSenseHandler.sendException(exception);
        exception.printStackTrace();
_L6:
        if (c != 0)
        {
            Toast.makeText(a, c, 1).show();
        }
        q.b(a);
        return;
_L5:
        com.aadhk.restpos.TakeOrderActivity.g(a).a(TakeOrderActivity.e(a), TakeOrderActivity.b(a), com.aadhk.restpos.TakeOrderActivity.f(a), false);
_L4:
        c = 0;
        if (true) goto _L6; else goto _L2
_L2:
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
