// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.SettingActivity;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.g.aa;
import com.aadhk.restpos.util.q;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            it

final class jd
    implements c
{

    final it a;
    private Map b;
    private Company c;
    private int d;

    public jd(it it1, Company company, int i)
    {
        a = it1;
        super();
        c = company;
        d = i;
    }

    public final void a()
    {
        b = it.a(a).a(c, d);
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if (!"1".equals(s)) goto _L2; else goto _L1
_L1:
        if (d != 0) goto _L4; else goto _L3
_L3:
        it.i(a);
_L5:
        ((POSApp)it.b(a).getApplicationContext()).a(c);
        return;
_L4:
        if (d == 1)
        {
            it.j(a);
        } else
        if (d == 2)
        {
            it.k(a);
        }
        if (true) goto _L5; else goto _L2
_L2:
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(it.b(a));
            Toast.makeText(it.b(a), it.b(a).getString(0x7f080246), 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(it.b(a), it.b(a).getString(0x7f080248), 1).show();
            return;
        } else
        {
            Toast.makeText(it.b(a), it.b(a).getString(0x7f080247), 1).show();
            return;
        }
    }
}
