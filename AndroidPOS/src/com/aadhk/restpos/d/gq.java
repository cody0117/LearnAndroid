// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.c.bo;
import com.aadhk.restpos.e.f;
import com.aadhk.restpos.e.g;
import com.bugsense.trace.BugSenseHandler;

// Referenced classes of package com.aadhk.restpos.d:
//            gn

final class gq
    implements c
{

    final gn a;
    private int b;

    gq(gn gn1)
    {
        a = gn1;
        super();
    }

    public final void a()
    {
        try
        {
            g g1 = gn.a(a);
            POSPrinterSetting posprintersetting = a.i;
            com.aadhk.restpos.bean.Order order = gn.b(a);
            java.util.List list = com.aadhk.restpos.d.gn.c(a);
            com.aadhk.restpos.bean.Customer customer = gn.d(a);
            gn.e(a);
            com.aadhk.restpos.d.gn.f(a);
            a.i.getPrintType();
            g1.a(posprintersetting, order, list, customer);
            b = 0;
            return;
        }
        catch (Exception exception)
        {
            BugSenseHandler.sendException(exception);
            b = f.a(exception);
            exception.printStackTrace();
            return;
        }
    }

    public final void b()
    {
        if (b == 0)
        {
            Toast.makeText(a.h, 0x7f0801ab, 1).show();
            return;
        } else
        {
            bo bo1 = new bo(a.h);
            bo1.a(b);
            bo1.show();
            return;
        }
    }
}
