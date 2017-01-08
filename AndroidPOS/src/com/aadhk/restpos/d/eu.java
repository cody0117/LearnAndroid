// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.View;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.PayInOutActivity;
import com.aadhk.restpos.a.a;
import com.aadhk.restpos.g.q;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            eq

final class eu
    implements c
{

    final eq a;
    private Map b;

    private eu(eq eq1)
    {
        a = eq1;
        super();
    }

    eu(eq eq1, byte byte0)
    {
        this(eq1);
    }

    public final void a()
    {
        b = eq.e(a).c().a((new StringBuilder()).append(com.aadhk.restpos.d.eq.a(a)).append(" ").append(eq.b(a)).toString(), (new StringBuilder()).append(com.aadhk.restpos.d.eq.c(a)).append(" ").append(eq.d(a)).toString());
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            com.aadhk.restpos.d.eq.a(a, (List)b.get("serviceData"));
            eq.g(a).setAdapter(new a(eq.e(a), eq.f(a), eq.e(a).b()));
            TextView textview = (TextView)eq.h(a).findViewById(0x7f09016e);
            if (eq.f(a).size() > 0)
            {
                textview.setVisibility(8);
                return;
            } else
            {
                textview.setVisibility(0);
                return;
            }
        }
        if ("10".equals(s) || "11".equals(s))
        {
            com.aadhk.restpos.util.q.a(eq.e(a));
            Toast.makeText(eq.e(a), 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(eq.e(a), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(eq.e(a), 0x7f080247, 1).show();
            return;
        }
    }
}
