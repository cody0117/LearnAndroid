// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.widget.Toast;
import com.aadhk.product.library.a.b;
import com.aadhk.restpos.e.e;
import com.aadhk.restpos.e.f;
import com.bugsense.trace.BugSenseHandler;

// Referenced classes of package com.aadhk.restpos.c:
//            am

final class ao
    implements b
{

    final am a;
    private int b;

    ao(am am1)
    {
        a = am1;
        super();
    }

    public final void a()
    {
        try
        {
            String s = am.a(a).getString(0x7f0900eb);
            am.g(a).a(com.aadhk.restpos.c.am.b(a), am.c(a), s, am.d(a), com.aadhk.restpos.c.am.e(a), com.aadhk.restpos.c.am.f(a), null);
            b = 0;
            return;
        }
        catch (Exception exception)
        {
            b = e.a(exception);
            BugSenseHandler.sendException(exception);
            exception.printStackTrace();
            return;
        }
    }

    public final void b()
    {
        if (b != 0)
        {
            Toast.makeText(am.a(a), b, 1).show();
        }
    }
}
