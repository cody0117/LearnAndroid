// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.b;
import com.aadhk.restpos.ReportListActivity;
import com.aadhk.restpos.e.e;
import com.aadhk.restpos.e.f;
import com.bugsense.trace.BugSenseHandler;

// Referenced classes of package com.aadhk.restpos.d:
//            eq

final class es
    implements b
{

    final eq a;
    private int b;

    es(eq eq1)
    {
        a = eq1;
        super();
    }

    public final void a()
    {
        try
        {
            String s = eq.a(a).getString(0x7f090195);
            eq.h(a).a(com.aadhk.restpos.d.eq.b(a), eq.c(a), s, eq.d(a), com.aadhk.restpos.d.eq.e(a), com.aadhk.restpos.d.eq.f(a), eq.g(a));
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
            Toast.makeText(eq.a(a), b, 1).show();
        }
    }
}
