// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.product.library.a.b;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.b.w;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.f.k;

// Referenced classes of package com.aadhk.restpos.d:
//            bk

final class bu
    implements b
{

    final bk a;

    bu(bk bk1)
    {
        a = bk1;
        super();
    }

    public final void a()
    {
        if (bk.i(a).getSplitType() == 0)
        {
            bk.o(a).b(bk.i(a));
            return;
        } else
        {
            bk.o(a).a(bk.i(a));
            return;
        }
    }

    public final void b()
    {
        if (bk.i(a).isHasUnpaidBill())
        {
            bk.d(a).a();
            return;
        }
        if (bk.i(a).getTableId() == 0L)
        {
            bk.d(a).finish();
            bk.d(a).e();
            return;
        } else
        {
            k.c(bk.d(a));
            return;
        }
    }
}
