// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.g.e;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            DiscountActivity

final class q
    implements c
{

    final DiscountActivity a;
    private Map b;
    private int c;

    public q(DiscountActivity discountactivity, int i)
    {
        a = discountactivity;
        super();
        c = i;
    }

    public final void a()
    {
        b = DiscountActivity.a(a).a(c);
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            DiscountActivity.a(a, (List)b.get("serviceData"));
            DiscountActivity.b(a);
            return;
        }
        if ("10".equals(s) || "11".equals(s))
        {
            com.aadhk.restpos.util.q.a(a);
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
