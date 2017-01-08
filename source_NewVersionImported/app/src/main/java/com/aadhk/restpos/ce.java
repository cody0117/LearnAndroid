// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.widget.Toast;
import com.aadhk.product.library.a.b;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.e.e;
import com.aadhk.restpos.e.f;
import com.aadhk.restpos.f.l;
import com.bugsense.trace.BugSenseHandler;
import java.util.Collections;

// Referenced classes of package com.aadhk.restpos:
//            TakeOrderActivity, cf

final class ce
    implements b
{

    final TakeOrderActivity a;
    private int b;

    ce(TakeOrderActivity takeorderactivity)
    {
        a = takeorderactivity;
        super();
    }

    public final void a()
    {
        try
        {
            if (a.c.l())
            {
                Collections.sort(TakeOrderActivity.g(a), new cf(a));
            }
            TakeOrderActivity.i(a).setOpenDrawer(true);
            TakeOrderActivity.h(a).a(TakeOrderActivity.i(a), TakeOrderActivity.a(a), TakeOrderActivity.j(a), TakeOrderActivity.g(a));
            b = 0;
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            b = e.a(exception);
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
