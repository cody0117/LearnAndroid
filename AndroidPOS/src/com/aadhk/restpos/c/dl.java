// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.widget.GridView;
import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.g.x;
import com.aadhk.restpos.util.q;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.c:
//            di, dj

final class dl
    implements c
{

    final di a;
    private Map b;

    private dl(di di1)
    {
        a = di1;
        super();
    }

    dl(di di1, byte byte0)
    {
        this(di1);
    }

    public final void a()
    {
        b = di.d(a).a(com.aadhk.restpos.c.di.c(a));
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            di.a(a, (List)b.get("serviceData"));
            di.e(a).setAdapter(new dj(a, (byte)0));
            return;
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(di.f(a));
            Toast.makeText(di.f(a), 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(di.f(a), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(di.f(a), 0x7f080247, 1).show();
            return;
        }
    }
}
