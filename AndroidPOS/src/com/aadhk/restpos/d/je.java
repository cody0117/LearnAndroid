// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.content.Intent;
import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.SettingActivity;
import com.aadhk.restpos.g.aa;
import com.aadhk.restpos.util.q;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            it

final class je
    implements c
{

    final it a;
    private Map b;

    private je(it it1)
    {
        a = it1;
        super();
    }

    je(it it1, byte byte0)
    {
        this(it1);
    }

    public final void a()
    {
        b = it.a(a).b();
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            ((POSApp)it.b(a).getApplication()).a();
            Intent intent = it.b(a).getIntent();
            intent.addFlags(0x10000);
            a.startActivity(intent);
            it.b(a).finish();
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
