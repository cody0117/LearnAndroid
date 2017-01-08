// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.c.de;
import com.aadhk.restpos.g.ad;
import com.aadhk.restpos.util.q;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            TakeOrderActivity, ee

final class ed
    implements c
{

    final TakeOrderActivity a;
    private Map b;

    private ed(TakeOrderActivity takeorderactivity)
    {
        a = takeorderactivity;
        super();
    }

    ed(TakeOrderActivity takeorderactivity, byte byte0)
    {
        this(takeorderactivity);
    }

    public final void a()
    {
        b = TakeOrderActivity.a(a).d(TakeOrderActivity.b(a).getTableId());
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            List list = (List)b.get("serviceData");
            de de1 = new de(a, list, true);
            de1.setTitle(0x7f080266);
            de1.a(new ee(this));
            de1.show();
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
