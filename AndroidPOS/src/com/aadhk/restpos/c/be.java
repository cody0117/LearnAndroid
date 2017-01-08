// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.e.f;
import com.aadhk.restpos.e.g;
import com.bugsense.trace.BugSenseHandler;

// Referenced classes of package com.aadhk.restpos.c:
//            bc

final class be
    implements c
{

    final bc a;
    private int b;

    be(bc bc1)
    {
        a = bc1;
        super();
    }

    public final void a()
    {
        try
        {
            String s = bc.a(a).getString(0x7f08011a);
            com.aadhk.restpos.c.bc.g(a).a(bc.b(a), com.aadhk.restpos.c.bc.c(a), s, bc.d(a), bc.e(a), com.aadhk.restpos.c.bc.f(a), null);
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
            Toast.makeText(bc.a(a), b, 1).show();
        }
    }
}
