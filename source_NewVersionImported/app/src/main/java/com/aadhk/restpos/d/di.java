// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.product.library.a.b;
import com.aadhk.restpos.c.ax;
import com.aadhk.restpos.c.g;
import com.aadhk.restpos.e.e;
import com.aadhk.restpos.e.f;
import com.bugsense.trace.BugSenseHandler;

// Referenced classes of package com.aadhk.restpos.d:
//            dh, dj

final class di
    implements b
{

    final dh a;
    private int b;

    di(dh dh1)
    {
        a = dh1;
        super();
    }

    public final void a()
    {
        try
        {
            dh.a(a).a(a.i);
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
        if (b == 0)
        {
            g g1 = new g(a.h);
            g1.setTitle(0x7f090174);
            g1.b();
            g1.a(new dj(this));
            g1.show();
            return;
        } else
        {
            ax ax1 = new ax(a.h);
            ax1.a(b);
            ax1.show();
            return;
        }
    }
}
