// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.e.f;
import com.aadhk.restpos.e.g;
import com.bugsense.trace.BugSenseHandler;

// Referenced classes of package com.aadhk.restpos:
//            TakeOrderActivity

final class dz
    implements c
{

    final TakeOrderActivity a;
    private int b;

    dz(TakeOrderActivity takeorderactivity)
    {
        a = takeorderactivity;
        super();
    }

    public final void a()
    {
        try
        {
            TakeOrderActivity.m(a).setOpenDrawer(true);
            com.aadhk.restpos.TakeOrderActivity.g(a).a(TakeOrderActivity.m(a), TakeOrderActivity.b(a), TakeOrderActivity.n(a), TakeOrderActivity.o(a));
            b = 0;
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            b = f.a(exception);
            BugSenseHandler.sendException(exception);
            return;
        }
    }

    public final void b()
    {
        if (b != 0)
        {
            Toast.makeText(a, b, 1).show();
        }
    }
}
