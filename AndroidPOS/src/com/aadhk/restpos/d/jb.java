// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.SettingActivity;
import com.aadhk.restpos.bean.ServiceFee;
import com.aadhk.restpos.g.z;
import com.aadhk.restpos.util.q;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            it

final class jb
    implements c
{

    final it a;
    private Map b;

    private jb(it it1)
    {
        a = it1;
        super();
    }

    jb(it it1, byte byte0)
    {
        this(it1);
    }

    public final void a()
    {
        b = it.g(a).a();
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            it.a(a, (List)b.get("serviceData"));
            ServiceFee servicefee = new ServiceFee();
            servicefee.setId(-1);
            servicefee.setName(a.getString(0x7f0800f7));
            it.h(a).add(0, servicefee);
            it.i(a);
            it.j(a);
            it.k(a);
            return;
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(it.b(a));
            Toast.makeText(it.b(a), it.b(a).getString(0x7f080246), 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(it.b(a), it.b(a).getString(0x7f080248), 1).show();
            return;
        } else
        {
            Toast.makeText(it.b(a), it.b(a).getString(0x7f080247), 1).show();
            return;
        }
    }
}
