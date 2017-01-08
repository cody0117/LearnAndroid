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

final class dx
    implements c
{

    final List a;
    final TakeOrderActivity b;
    private int c;

    dx(TakeOrderActivity takeorderactivity, List list)
    {
        b = takeorderactivity;
        a = list;
        super();
    }

    public final void a()
    {
        try
        {
            com.aadhk.restpos.TakeOrderActivity.g(b).a(TakeOrderActivity.m(b), TakeOrderActivity.b(b), a);
            c = 0;
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            c = f.a(exception);
            BugSenseHandler.sendException(exception);
            return;
        }
    }

    public final void b()
    {
        if (c != 0)
        {
            Toast.makeText(b, c, 1).show();
        }
    }
}
