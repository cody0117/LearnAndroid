// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.EditText;
import android.widget.Spinner;
import com.aadhk.printer.f;
import com.aadhk.product.library.a.b;
import com.aadhk.restpos.a.bf;
import com.aadhk.restpos.c.ax;
import com.aadhk.restpos.e.e;
import com.bugsense.trace.BugSenseHandler;

// Referenced classes of package com.aadhk.restpos.d:
//            de

final class dg
    implements b
{

    final de a;
    private int b;

    dg(de de1)
    {
        a = de1;
        super();
    }

    public final void a()
    {
        try
        {
            de.a(a, f.a(com.aadhk.restpos.d.de.b(a).getText().toString()));
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
            ax ax1 = new ax(a.h);
            ax1.a(b);
            ax1.show();
        }
        if (de.a(a) == null)
        {
            de.a(a, new String[] {
                ""
            });
        }
        de.a(a, new bf(a.h, de.a(a)));
        de.d(a).setAdapter(de.c(a));
    }
}
