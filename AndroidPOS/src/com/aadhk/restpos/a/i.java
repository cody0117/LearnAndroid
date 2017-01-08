// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.view.View;
import android.widget.Toast;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.bean.Item;
import com.aadhk.restpos.c.q;

// Referenced classes of package com.aadhk.restpos.a:
//            h, j, m

final class i
    implements android.view.View.OnClickListener
{

    final Item a;
    final m b;
    final h c;

    i(h h1, Item item, m m)
    {
        c = h1;
        a = item;
        b = m;
        super();
    }

    public final void onClick(View view)
    {
        int k = a.getQty() - a.getOrderQty();
        if (k == 0 && a.isStopSaleZeroQty())
        {
            Toast.makeText(h.a(c), h.a(c).getString(0x7f080298), 0).show();
            return;
        }
        if (a.isAskPrice())
        {
            q q1 = new q(h.a(c), a, k);
            q1.a(new j(this));
            q1.show();
            return;
        } else
        {
            h.a(c, b, a, 1, a.getPrice());
            return;
        }
    }
}
