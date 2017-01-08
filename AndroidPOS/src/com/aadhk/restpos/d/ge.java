// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.g.t;
import com.aadhk.restpos.util.q;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            gb, gc

final class ge
    implements c
{

    final gb a;
    private Map b;

    private ge(gb gb1)
    {
        a = gb1;
        super();
    }

    ge(gb gb1, byte byte0)
    {
        this(gb1);
    }

    public final void a()
    {
        b = gb.a(a).a();
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            gb.a(a, (List)b.get("serviceData"));
            gb.a(a, new gc(a, (byte)0));
            com.aadhk.restpos.d.gb.c(a).setAdapter(gb.b(a));
            if (gb.d(a).size() > 0)
            {
                gb.e(a).setVisibility(8);
                return;
            } else
            {
                gb.e(a).setVisibility(0);
                return;
            }
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(gb.f(a));
            Toast.makeText(gb.f(a), 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(gb.f(a), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(gb.f(a), 0x7f080247, 1).show();
            return;
        }
    }
}
