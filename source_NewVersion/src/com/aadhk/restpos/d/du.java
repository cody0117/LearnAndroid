// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.b;
import com.aadhk.restpos.e.e;
import com.aadhk.restpos.e.f;
import com.bugsense.trace.BugSenseHandler;

// Referenced classes of package com.aadhk.restpos.d:
//            dr

final class du
    implements b
{

    final dr a;
    private int b;

    du(dr dr1)
    {
        a = dr1;
        super();
    }

    public final void a()
    {
        try
        {
            dr.h(a).a(com.aadhk.restpos.d.dr.e(a), com.aadhk.restpos.d.dr.b(a), com.aadhk.restpos.d.dr.f(a), dr.g(a));
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
            Toast.makeText(dr.d(a), b, 1).show();
        }
    }
}
