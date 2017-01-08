// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.g.u;
import com.aadhk.restpos.util.q;
import com.aadhk.restpos.util.r;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            gf

final class gi
    implements c
{

    final gf a;
    private Map b;

    private gi(gf gf1)
    {
        a = gf1;
        super();
    }

    gi(gf gf1, byte byte0)
    {
        this(gf1);
    }

    public final void a()
    {
        b = a.l.c(a.i);
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            if ((a.i.getConnType() == 0 || a.i.getConnType() == 3) && a.i.isEnable())
            {
                (new r(a.h)).a("requireWifi", true);
                return;
            } else
            {
                (new r(a.h)).a("requireWifi", false);
                return;
            }
        }
        if ("11".equals(s))
        {
            q.a(a.h);
            Toast.makeText(a.h, 0x7f080246, 1).show();
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
