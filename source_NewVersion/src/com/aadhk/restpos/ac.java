// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.view.MenuItem;
import android.widget.GridView;
import com.aadhk.restpos.a.ab;
import com.aadhk.restpos.b.m;
import com.aadhk.restpos.bean.Item;
import com.aadhk.restpos.c.bs;
import com.aadhk.restpos.c.bu;

// Referenced classes of package com.aadhk.restpos:
//            ListOrdersActivity

final class ac
    implements bu
{

    final bs a;
    final ListOrdersActivity b;

    ac(ListOrdersActivity listordersactivity, bs bs1)
    {
        b = listordersactivity;
        a = bs1;
        super();
    }

    public final void a(Item item)
    {
        ListOrdersActivity.a(b, item.getId());
        ListOrdersActivity.a(b, ListOrdersActivity.b(b).d(ListOrdersActivity.a(b)));
        ListOrdersActivity.a(b, new ab(b, ListOrdersActivity.c(b)));
        ListOrdersActivity.e(b).setAdapter(ListOrdersActivity.d(b));
        a.dismiss();
        ListOrdersActivity.f(b).setVisible(false);
        ListOrdersActivity.g(b).setVisible(true);
        ListOrdersActivity.g(b).setTitle(item.getName());
    }
}
