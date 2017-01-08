// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.ListView;
import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.RolePermissionActivity;
import com.aadhk.restpos.g.y;
import com.aadhk.restpos.util.q;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            ii, ij

final class io
    implements c
{

    final ii a;
    private Map b;

    private io(ii ii1)
    {
        a = ii1;
        super();
    }

    io(ii ii1, byte byte0)
    {
        this(ii1);
    }

    public final void a()
    {
        b = com.aadhk.restpos.d.ii.c(a).a(ii.b(a));
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            ii.a(a, (List)b.get("serviceData"));
            ii.d(a).setAdapter(new ij(a, (byte)0));
            ii.e(a).b();
            return;
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(ii.e(a));
            Toast.makeText(ii.e(a), 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(ii.e(a), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(ii.e(a), 0x7f080247, 1).show();
            return;
        }
    }
}
