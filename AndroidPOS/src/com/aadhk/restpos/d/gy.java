// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.g.u;
import com.aadhk.restpos.util.q;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            gw

final class gy
    implements c
{

    final gw a;
    private Map b;

    private gy(gw gw1)
    {
        a = gw1;
        super();
    }

    gy(gw gw1, byte byte0)
    {
        this(gw1);
    }

    public final void a()
    {
        b = a.l.b(a.i);
    }

    public final void b()
    {
        String s;
label0:
        {
            s = (String)b.get("serviceStatus");
            if (!"1".equals(s))
            {
                if (!"10".equals(s) && !"11".equals(s))
                {
                    break label0;
                }
                q.a(a.h);
                Toast.makeText(a.h, 0x7f080246, 1).show();
            }
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(a.h, 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(a.h, 0x7f080247, 1).show();
            return;
        }
    }
}
