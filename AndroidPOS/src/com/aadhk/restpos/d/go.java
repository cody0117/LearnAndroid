// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.product.library.a.c;
import com.aadhk.restpos.c.bo;
import com.aadhk.restpos.c.d;
import com.aadhk.restpos.e.f;
import com.aadhk.restpos.e.g;
import com.bugsense.trace.BugSenseHandler;

// Referenced classes of package com.aadhk.restpos.d:
//            gn, gp

final class go
    implements c
{

    final gn a;
    private int b;

    go(gn gn1)
    {
        a = gn1;
        super();
    }

    public final void a()
    {
        try
        {
            gn.a(a).a(a.i);
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
        if (b == 0)
        {
            d d1 = new d(a.h);
            d1.setTitle(0x7f0801a9);
            d1.b();
            d1.a(new gp(this));
            d1.show();
            return;
        } else
        {
            bo bo1 = new bo(a.h);
            bo1.a(b);
            bo1.show();
            return;
        }
    }
}
