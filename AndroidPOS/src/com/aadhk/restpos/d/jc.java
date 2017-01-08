// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.a.m;
import com.aadhk.b.a;
import com.aadhk.b.b;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.SettingActivity;
import com.aadhk.restpos.bean.License;
import com.aadhk.restpos.f.aa;
import com.aadhk.restpos.util.r;
import com.bugsense.trace.BugSenseHandler;
import java.util.Date;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            it

final class jc
    implements c
{

    final it a;
    private Map b;
    private License c;

    public jc(it it1, License license)
    {
        a = it1;
        super();
        c = license;
    }

    public final void a()
    {
        try
        {
            b = (new aa()).b(c);
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            BugSenseHandler.sendException(exception);
            return;
        }
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            try
            {
                License license = (License)b.get("serviceData");
                com.aadhk.restpos.d.it.c(a).a(license);
                m m1 = new m("inapp", "10001", "com.aadhk.restpos.full", (new Date()).getTime());
                com.aadhk.b.b.a(com.aadhk.restpos.d.it.b(a), m1);
                return;
            }
            catch (a a1)
            {
                BugSenseHandler.sendException(a1);
                a1.printStackTrace();
                return;
            }
        }
        if ("90".equals(s))
        {
            Toast.makeText(com.aadhk.restpos.d.it.b(a).getApplicationContext(), com.aadhk.restpos.d.it.b(a).getString(0x7f080012), 0).show();
            return;
        } else
        {
            Toast.makeText(com.aadhk.restpos.d.it.b(a), 0x7f080082, 1).show();
            return;
        }
    }
}
