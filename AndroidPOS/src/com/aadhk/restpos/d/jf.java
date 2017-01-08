// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.SettingActivity;
import com.aadhk.restpos.g.aa;
import com.aadhk.restpos.util.q;
import com.aadhk.restpos.util.r;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            it

final class jf
    implements c
{

    final it a;
    private Map b;
    private String c;
    private String d;
    private String e;

    public jf(it it1, String s, String s1, String s2)
    {
        a = it1;
        super();
        c = s;
        d = s1;
        e = s2;
    }

    public final void a()
    {
        b = it.a(a).a(c, d, e);
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            it.a(a, "");
            it.b(a, c);
            com.aadhk.restpos.d.it.c(a, d);
            it.d(a, e);
            it.f(a);
            com.aadhk.restpos.d.it.c(a).a("prefOrderNum", "");
            com.aadhk.restpos.d.it.c(a).a("prefOrderNumPrefix", it.l(a));
            com.aadhk.restpos.d.it.c(a).a("prefOrderNumInitial", it.m(a));
            com.aadhk.restpos.d.it.c(a).a("prefOrderNumSuffix", it.n(a));
            return;
        }
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
