// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.widget.Toast;
import com.aadhk.product.library.a.b;
import com.aadhk.restpos.b.w;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.e.e;
import com.aadhk.restpos.e.f;
import com.aadhk.restpos.f.i;
import com.aadhk.restpos.f.k;
import com.aadhk.restpos.f.l;
import com.bugsense.trace.BugSenseHandler;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            cb, TakeOrderActivity

final class cc
    implements b
{

    final String a;
    final cb b;
    private int c;

    cc(cb cb1, String s)
    {
        b = cb1;
        a = s;
        super();
    }

    public final void a()
    {
        TakeOrderActivity.a(b.a).setEndTime(i.c());
        TakeOrderActivity.a(b.a).setCancelPerson(TakeOrderActivity.d(b.a));
        TakeOrderActivity.a(b.a).setCancelReason(a);
        TakeOrderActivity.a(b.a).setCashierName(TakeOrderActivity.d(b.a));
        TakeOrderActivity.a(b.a).setAmount(0.0D);
        com.aadhk.restpos.TakeOrderActivity.e(b.a).c(TakeOrderActivity.a(b.a));
        try
        {
            if (!b.a.c.j() || com.aadhk.restpos.TakeOrderActivity.f(b.a).isEmpty())
            {
                break MISSING_BLOCK_LABEL_253;
            }
            for (Iterator iterator = TakeOrderActivity.g(b.a).iterator(); iterator.hasNext(); ((OrderItem)iterator.next()).setStatus(1)) { }
        }
        catch (Exception exception)
        {
            c = e.a(exception);
            BugSenseHandler.sendException(exception);
            exception.printStackTrace();
            return;
        }
        TakeOrderActivity.h(b.a).a(com.aadhk.restpos.TakeOrderActivity.f(b.a), TakeOrderActivity.a(b.a), TakeOrderActivity.g(b.a), false);
        c = 0;
        return;
    }

    public final void b()
    {
        if (c != 0)
        {
            Toast.makeText(b.a, c, 1).show();
        }
        k.c(b.a);
    }
}
