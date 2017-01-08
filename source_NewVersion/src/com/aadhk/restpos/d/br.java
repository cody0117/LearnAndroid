// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.content.res.Resources;
import com.aadhk.product.library.a.a;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.c.bz;
import com.aadhk.restpos.c.ca;

// Referenced classes of package com.aadhk.restpos.d:
//            bk, bs

final class br
    implements ca
{

    final OrderItem a;
    final bz b;
    final bk c;

    br(bk bk1, OrderItem orderitem, bz bz)
    {
        c = bk1;
        a = orderitem;
        b = bz;
        super();
    }

    public final void a(String s)
    {
        (new a(bk.d(c), new bs(this, s), bk.b(c).getString(0x7f090179))).execute(null);
    }
}
