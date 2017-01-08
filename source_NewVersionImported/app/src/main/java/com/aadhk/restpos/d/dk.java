// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.b;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.c.ax;
import com.aadhk.restpos.e.e;
import com.aadhk.restpos.e.f;
import com.bugsense.trace.BugSenseHandler;

// Referenced classes of package com.aadhk.restpos.d:
//            dh

final class dk
    implements b
{

    final dh a;
    private int b;

    dk(dh dh1)
    {
        a = dh1;
        super();
    }

    public final void a()
    {
        try
        {
            f f1 = dh.a(a);
            POSPrinterSetting posprintersetting = a.i;
            com.aadhk.restpos.bean.Order order = com.aadhk.restpos.d.dh.b(a);
            java.util.List list = dh.c(a);
            com.aadhk.restpos.bean.Customer customer = dh.d(a);
            com.aadhk.restpos.d.dh.e(a);
            com.aadhk.restpos.d.dh.f(a);
            a.i.getPrintType();
            f1.a(posprintersetting, order, list, customer);
            b = 0;
            return;
        }
        catch (Exception exception)
        {
            BugSenseHandler.sendException(exception);
            b = e.a(exception);
            exception.printStackTrace();
            return;
        }
    }

    public final void b()
    {
        if (b == 0)
        {
            Toast.makeText(a.h, 0x7f090176, 1).show();
            return;
        } else
        {
            ax ax1 = new ax(a.h);
            ax1.a(b);
            ax1.show();
            return;
        }
    }
}
