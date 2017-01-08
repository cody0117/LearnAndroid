// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.c.x;
import com.aadhk.restpos.d.en;
import com.aadhk.restpos.util.o;

// Referenced classes of package com.aadhk.restpos.a:
//            q

final class ab
    implements x
{

    final q a;

    ab(q q1)
    {
        a = q1;
        super();
    }

    public final void a(Object obj)
    {
        ((OrderItem)obj).setStartTime(o.c());
        q.a(a).a();
        a.notifyDataSetChanged();
        q.b(a);
        TakeOrderActivity.g();
    }
}
