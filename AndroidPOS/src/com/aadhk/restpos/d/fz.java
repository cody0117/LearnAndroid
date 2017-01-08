// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.PriceScheduleActivity;
import com.aadhk.restpos.bean.PriceSchedule;
import com.aadhk.restpos.g.t;
import com.aadhk.restpos.util.q;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            fq

final class fz
    implements c
{

    final fq a;
    private Map b;

    private fz(fq fq1)
    {
        a = fq1;
        super();
    }

    fz(fq fq1, byte byte0)
    {
        this(fq1);
    }

    public final void a()
    {
        b = fq.k(a).a(fq.g(a).getId());
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            fq.a(a).b();
            return;
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(fq.a(a));
            Toast.makeText(fq.a(a), 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(fq.a(a), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(fq.a(a), 0x7f080247, 1).show();
            return;
        }
    }
}
