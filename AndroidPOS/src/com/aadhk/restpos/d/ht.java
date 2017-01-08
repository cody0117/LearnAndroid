// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.e.f;
import com.aadhk.restpos.e.g;
import com.bugsense.trace.BugSenseHandler;

// Referenced classes of package com.aadhk.restpos.d:
//            hr

final class ht
    implements c
{

    final hr a;
    private int b;

    ht(hr hr1)
    {
        a = hr1;
        super();
    }

    public final void a()
    {
        try
        {
            String s = a.getString(0x7f0801d0);
            com.aadhk.restpos.d.hr.g(a).a(hr.a(a), hr.b(a), s, com.aadhk.restpos.d.hr.c(a), hr.d(a), hr.e(a), com.aadhk.restpos.d.hr.f(a));
            b = 0;
            return;
        }
        catch (Exception exception)
        {
            b = f.a(exception);
            BugSenseHandler.sendException(exception);
            exception.printStackTrace();
            return;
        }
    }

    public final void b()
    {
        if (b != 0)
        {
            Toast.makeText(hr.h(a), b, 1).show();
        }
    }
}
