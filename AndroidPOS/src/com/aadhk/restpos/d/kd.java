// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Button;
import android.widget.ExpandableListView;
import android.widget.TextView;
import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.g.ab;
import com.aadhk.restpos.util.q;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            jx, jz

final class kd
    implements c
{

    final jx a;
    private Map b;

    private kd(jx jx1)
    {
        a = jx1;
        super();
    }

    kd(jx jx1, byte byte0)
    {
        this(jx1);
    }

    public final void a()
    {
        b = jx.e(a).a(com.aadhk.restpos.d.jx.c(a).getId(), jx.d(a));
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            jx.a(a, (List)b.get("serviceData"));
            jx.a(a, new jz(a));
            jx.f(a).setAdapter(jx.b(a));
            for (int i = 0; i < jx.a(a).size(); i++)
            {
                jx.f(a).expandGroup(i);
            }

            if (jx.a(a).size() > 0)
            {
                jx.f(a).setVisibility(0);
                jx.g(a).setVisibility(8);
                jx.b(a).notifyDataSetChanged();
            } else
            {
                jx.f(a).setVisibility(8);
                jx.g(a).setVisibility(0);
            }
            if (jx.h(a) == 2 && jx.a(a).size() > 0)
            {
                jx.i(a).setVisibility(0);
                return;
            } else
            {
                jx.i(a).setVisibility(8);
                return;
            }
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(jx.j(a));
            Toast.makeText(jx.j(a), 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(jx.j(a), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(jx.j(a), 0x7f080247, 1).show();
            return;
        }
    }
}
