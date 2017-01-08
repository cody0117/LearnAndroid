// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.UserActivity;
import com.aadhk.restpos.bean.User;
import com.aadhk.restpos.g.ae;
import com.aadhk.restpos.util.q;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            kk

final class kp
    implements c
{

    final kk a;
    private Map b;
    private User c;

    public kp(kk kk1, User user)
    {
        a = kk1;
        super();
        c = user;
    }

    public final void a()
    {
        b = com.aadhk.restpos.d.kk.c(a).a(c);
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            List list = (List)b.get("serviceData");
            kk.b(a).a(list);
            kk.d(a);
            return;
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(kk.b(a));
            Toast.makeText(kk.b(a), 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(kk.b(a), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(kk.b(a), 0x7f080247, 1).show();
            return;
        }
    }
}
