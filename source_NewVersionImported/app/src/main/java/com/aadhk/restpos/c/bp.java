// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.widget.Toast;
import com.aadhk.product.library.a.b;
import com.aadhk.restpos.e.e;
import com.aadhk.restpos.e.f;
import com.bugsense.trace.BugSenseHandler;

// Referenced classes of package com.aadhk.restpos.c:
//            bn

final class bp
    implements b
{

    final bn a;
    private int b;

    bp(bn bn1)
    {
        a = bn1;
        super();
    }

    public final void a()
    {
        try
        {
            bn.d(a).a(bn.a(a), com.aadhk.restpos.c.bn.b(a), null, bn.c(a));
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
            Toast.makeText(a.e, b, 1).show();
        }
    }
}
