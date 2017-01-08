// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.e.f;
import com.aadhk.restpos.e.g;
import com.bugsense.trace.BugSenseHandler;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            TakeOrderActivity

final class dy
    implements c
{

    final List a;
    final boolean b;
    final TakeOrderActivity c;
    private int d;

    dy(TakeOrderActivity takeorderactivity, List list, boolean flag)
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
            com.aadhk.restpos.TakeOrderActivity.g(c).a(TakeOrderActivity.e(c), TakeOrderActivity.b(c), a, b);
            d = 0;
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            d = f.a(exception);
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
