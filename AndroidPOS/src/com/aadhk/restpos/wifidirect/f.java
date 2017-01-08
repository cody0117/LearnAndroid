// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.wifidirect;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.g.h;
import com.aadhk.restpos.util.q;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.wifidirect:
//            DeviceDetailFragment

final class f
    implements c
{

    final DeviceDetailFragment a;
    private Map b;

    private f(DeviceDetailFragment devicedetailfragment)
    {
        a = devicedetailfragment;
        super();
    }

    f(DeviceDetailFragment devicedetailfragment, byte byte0)
    {
        this(devicedetailfragment);
    }

    public final void a()
    {
        b = com.aadhk.restpos.wifidirect.DeviceDetailFragment.c(a).a();
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            DeviceDetailFragment.a(a, (List)b.get("serviceData"));
            a.a(DeviceDetailFragment.b(a));
        } else
        {
            if ("10".equals(s) || "11".equals(s))
            {
                q.a(DeviceDetailFragment.b(), s);
                return;
            }
            if ("9".equals(s))
            {
                Toast.makeText(DeviceDetailFragment.b(), 0x7f0803a3, 1).show();
                return;
            }
        }
    }
}
