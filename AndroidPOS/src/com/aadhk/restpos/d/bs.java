// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.g.u;
import com.aadhk.restpos.util.f;
import com.aadhk.restpos.util.q;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            bq

final class bs
    implements c
{

    final bq a;
    private Map b;

    private bs(bq bq1)
    {
        a = bq1;
        super();
    }

    bs(bq bq1, byte byte0)
    {
        this(bq1);
    }

    public final void a()
    {
        bq.a(a).setLogoName("");
        com.aadhk.product.library.c.f.a(f.f);
        b = bq.b(a).b(bq.a(a).getId(), bq.a(a).getLogoName());
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            com.aadhk.restpos.d.bq.f(a);
            Toast.makeText(bq.e(a), 0x7f0802c8, 1).show();
            return;
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(bq.e(a));
            Toast.makeText(bq.e(a), 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(bq.e(a), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(bq.e(a), 0x7f080247, 1).show();
            return;
        }
    }
}
