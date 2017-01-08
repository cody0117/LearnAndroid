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
//            gz

final class hc
    implements c
{

    final gz a;
    private int b;

    hc(gz gz1)
    {
        a = gz1;
        super();
    }

    public final void a()
    {
        try
        {
            com.aadhk.restpos.d.gz.g(a).a(com.aadhk.restpos.d.gz.c(a), gz.d(a), gz.e(a), com.aadhk.restpos.d.gz.f(a));
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
            Toast.makeText(gz.b(a), b, 1).show();
        }
    }
}
