// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.aadhk.product.library.a.c;
import com.aadhk.restpos.bean.License;
import com.aadhk.restpos.f.aa;
import com.aadhk.restpos.util.r;
import com.bugsense.trace.BugSenseHandler;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            LoginActivity

final class ab
    implements c
{

    final LoginActivity a;

    ab(LoginActivity loginactivity)
    {
        a = loginactivity;
        super();
    }

    public final void a()
    {
        try
        {
            Map map = (new aa()).a(LoginActivity.a(a).y());
            if ("1".equals((String)map.get("serviceStatus")))
            {
                License license = (License)map.get("serviceData");
                LoginActivity.a(a).a(license);
            }
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
        LoginActivity.b(a);
    }
}
