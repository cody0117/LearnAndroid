// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.aadhk.restpos.b.p;
import com.aadhk.restpos.bean.PaymentMethod;
import com.aadhk.restpos.c.i;

// Referenced classes of package com.aadhk.restpos:
//            bi, PaymentMethodActivity

final class bj
    implements i
{

    final bi a;

    bj(bi bi1)
    {
        a = bi1;
        super();
    }

    public final void a()
    {
        PaymentMethodActivity.a(a.b).a(a.a.getId());
        a.b.a();
    }
}
