// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.product.library.b.f;
import com.aadhk.restpos.b.u;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.SplitBill;

// Referenced classes of package com.aadhk.restpos.d:
//            ff

final class fi
    implements f
{

    final ff a;

    fi(ff ff1)
    {
        a = ff1;
        super();
    }

    public final void a(Object obj)
    {
        SplitBill splitbill = new SplitBill();
        splitbill.setOrderId(ff.c(a).getId());
        splitbill.setAmount(((Double)obj).doubleValue());
        ff.a(a).a(splitbill);
        ff.a(a, ff.a(a).b(ff.c(a).getId()));
        ff.c(a).setSplitType((short)1);
        a.a();
    }
}
