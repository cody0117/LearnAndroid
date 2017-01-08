// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.g.h;
import com.aadhk.restpos.util.q;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            KitchenActivity

final class w
    implements c
{

    final KitchenActivity a;
    private Map b;

    private w(KitchenActivity kitchenactivity)
    {
        a = kitchenactivity;
        super();
    }

    w(KitchenActivity kitchenactivity, byte byte0)
    {
        this(kitchenactivity);
    }

    public final void a()
    {
        b = com.aadhk.restpos.KitchenActivity.c(a).a();
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            KitchenActivity _tmp = a;
            KitchenActivity.a(b);
            a.c();
        } else
        {
            if ("10".equals(s) || "11".equals(s))
            {
                q.a(a, s);
                return;
            }
            if ("9".equals(s))
            {
                Toast.makeText(a, 0x7f0803a3, 1).show();
                return;
            }
        }
    }
}
