// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.b;
import com.aadhk.product.library.c.c;
import com.aadhk.restpos.e.e;
import com.aadhk.restpos.e.f;
import com.bugsense.trace.BugSenseHandler;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            eu

final class ew
    implements b
{

    final eu a;
    private int b;

    ew(eu eu1)
    {
        a = eu1;
        super();
    }

    public final void a()
    {
        try
        {
            ArrayList arraylist = new ArrayList();
            arraylist.add(com.aadhk.restpos.d.eu.c(a));
            com.aadhk.restpos.d.eu.f(a).a(eu.d(a), arraylist, a.n, a.a, a.b, c.c(), com.aadhk.restpos.d.eu.e(a));
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
            Toast.makeText(a.f, b, 1).show();
        }
    }
}
