// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.b;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.a.j;
import com.aadhk.restpos.b.n;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.c.bz;
import com.aadhk.restpos.e.e;
import com.aadhk.restpos.f.i;
import com.aadhk.restpos.f.l;
import com.bugsense.trace.BugSenseHandler;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            br, bk

final class bs
    implements b
{

    final String a;
    final br b;
    private int c;

    bs(br br1, String s)
    {
        b = br1;
        a = s;
        super();
    }

    public final void a()
    {
        try
        {
            b.a.setCancelReason(a);
            b.a.setEndTime(i.c());
            b.a.setStatus(1);
            com.aadhk.restpos.d.bk.e(b.c).a(b.a);
            if (bk.k(b.c).j() && !bk.f(b.c).isEmpty())
            {
                ArrayList arraylist = new ArrayList();
                arraylist.add(b.a);
                bk.d(b.c).a(arraylist, false);
            }
            c = 0;
            return;
        }
        catch (Exception exception)
        {
            c = e.a(exception);
            BugSenseHandler.sendException(exception);
            exception.printStackTrace();
            return;
        }
    }

    public final void b()
    {
        if (c != 0)
        {
            Toast.makeText(bk.d(b.c), c, 1).show();
        }
        bk.g(b.c).notifyDataSetChanged();
        bk.h(b.c);
        b.b.dismiss();
    }
}
