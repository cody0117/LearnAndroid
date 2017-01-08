// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.widget.Toast;
import com.aadhk.product.library.a.b;
import com.aadhk.restpos.e.e;
import com.aadhk.restpos.e.f;
import com.bugsense.trace.BugSenseHandler;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            TakeOrderActivity

final class cd
    implements b
{

    final List a;
    final boolean b;
    final TakeOrderActivity c;
    private int d;

    cd(TakeOrderActivity takeorderactivity, List list, boolean flag)
    {
        c = takeorderactivity;
        a = list;
        b = flag;
        super();
    }

    public final void a()
    {
        try
        {
            TakeOrderActivity.h(c).a(com.aadhk.restpos.TakeOrderActivity.f(c), TakeOrderActivity.a(c), a, b);
            d = 0;
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            d = e.a(exception);
            BugSenseHandler.sendException(exception);
            return;
        }
    }

    public final void b()
    {
        if (d != 0)
        {
            Toast.makeText(c, d, 1).show();
        }
    }
}
