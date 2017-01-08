// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.KitchenNoteActivity;
import com.aadhk.restpos.bean.KitchenNote;
import com.aadhk.restpos.g.g;
import com.aadhk.restpos.util.q;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            az

final class bj
    implements c
{

    final az a;
    private Map b;
    private KitchenNote c;

    public bj(az az1, KitchenNote kitchennote)
    {
        a = az1;
        super();
        c = kitchennote;
    }

    public final void a()
    {
        b = az.f(a).a(c);
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            List list = (List)b.get("serviceData");
            az.b(a).a(list);
            com.aadhk.restpos.d.az.g(a);
            return;
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(az.b(a));
            Toast.makeText(az.b(a), 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(az.b(a), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(az.b(a), 0x7f080247, 1).show();
            return;
        }
    }
}
