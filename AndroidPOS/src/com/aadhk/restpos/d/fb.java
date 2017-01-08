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
//            ey

final class fb
    implements c
{

    final ey a;
    private int b;

    fb(ey ey1)
    {
        a = ey1;
        super();
    }

    public final void a()
    {
        try
        {
            ey.o(a).b(ey.l(a));
            b = 0;
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            b = f.a(exception);
            BugSenseHandler.sendException(exception);
            return;
        }
    }

    public final void b()
    {
        if (b != 0)
        {
            Toast.makeText(com.aadhk.restpos.d.ey.c(a), b, 1).show();
        }
    }
}
