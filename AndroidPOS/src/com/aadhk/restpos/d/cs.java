// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.g.k;
import com.aadhk.restpos.util.q;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            cf, cr

final class cs
    implements c
{

    final cr a;
    private Map b;
    private Map c;

    public cs(cr cr1, Map map)
    {
        a = cr1;
        super();
        c = map;
    }

    public final void a()
    {
        b = cf.a().a(c);
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
                q.a(a.getActivity());
                Toast.makeText(a.getActivity(), 0x7f080246, 1).show();
            }
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(a.getActivity(), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(a.getActivity(), 0x7f080247, 1).show();
            return;
        }
    }
}
