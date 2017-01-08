// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.res.Resources;
import android.widget.EditText;
import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.g.ae;
import com.aadhk.restpos.util.q;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.c:
//            bl, bm

final class bn
    implements c
{

    final bl a;
    private Map b;

    private bn(bl bl1)
    {
        a = bl1;
        super();
    }

    bn(bl bl1, byte byte0)
    {
        this(bl1);
    }

    public final void a()
    {
        b = (new ae(bl.a(a))).a(bl.b(a));
        f.a().c();
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            if (((Boolean)b.get("serviceData")).booleanValue())
            {
                if (com.aadhk.restpos.c.bl.c(a) != null)
                {
                    bm bm1 = com.aadhk.restpos.c.bl.c(a);
                    bl.d(a);
                    bm1.a();
                }
                a.dismiss();
                return;
            } else
            {
                bl.e(a).setError(a.a.getString(0x7f080257));
                bl.e(a).requestFocus();
                return;
            }
        }
        if ("9".equals(s))
        {
            Toast.makeText(bl.a(a), 0x7f080248, 1).show();
            return;
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(bl.a(a));
            Toast.makeText(bl.a(a), 0x7f080246, 1).show();
            return;
        } else
        {
            Toast.makeText(bl.a(a), 0x7f080247, 1).show();
            return;
        }
    }
}
