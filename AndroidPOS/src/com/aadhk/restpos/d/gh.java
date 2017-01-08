// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.EditText;
import android.widget.Spinner;
import com.aadhk.printer.i;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.a.bn;
import com.aadhk.restpos.c.bo;
import com.aadhk.restpos.e.f;
import com.bugsense.trace.BugSenseHandler;

// Referenced classes of package com.aadhk.restpos.d:
//            gf

final class gh
    implements c
{

    final gf a;
    private int b;

    gh(gf gf1)
    {
        a = gf1;
        super();
    }

    public final void a()
    {
        try
        {
            gf.a(a, i.a(gf.b(a).getText().toString()));
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
            bo bo1 = new bo(a.h);
            bo1.a(b);
            bo1.show();
        }
        if (gf.a(a) == null)
        {
            gf.a(a, new String[] {
                ""
            });
        }
        gf.a(a, new bn(a.h, gf.a(a)));
        gf.d(a).setAdapter(com.aadhk.restpos.d.gf.c(a));
    }
}
