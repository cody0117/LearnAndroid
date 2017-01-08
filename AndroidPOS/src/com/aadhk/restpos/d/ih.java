// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.ReservationActivity;
import com.aadhk.restpos.g.x;
import com.aadhk.restpos.util.q;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            ia

final class ih
    implements c
{

    final ia a;
    private Map b;
    private int c;

    public ih(ia ia1, int i)
    {
        a = ia1;
        super();
        c = i;
    }

    public final void a()
    {
        b = com.aadhk.restpos.d.ia.c(a).a().a(c);
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
                q.a(com.aadhk.restpos.d.ia.c(a));
                Toast.makeText(com.aadhk.restpos.d.ia.c(a), 0x7f080246, 1).show();
            }
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(com.aadhk.restpos.d.ia.c(a), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(com.aadhk.restpos.d.ia.c(a), 0x7f080247, 1).show();
            return;
        }
    }
}
