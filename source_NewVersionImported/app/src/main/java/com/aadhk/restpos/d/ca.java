// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.product.library.b.g;
import com.aadhk.restpos.PayInOutActivity;
import com.aadhk.restpos.b.a;
import com.aadhk.restpos.bean.CashRegister;

// Referenced classes of package com.aadhk.restpos.d:
//            by

final class ca
    implements g
{

    final CashRegister a;
    final by b;

    ca(by by1, CashRegister cashregister)
    {
        b = by1;
        a = cashregister;
        super();
    }

    public final void a()
    {
        com.aadhk.restpos.d.by.a(b).c().a(a.getId());
        com.aadhk.restpos.d.by.a(b).a();
    }
}
