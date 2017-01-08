// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.product.library.b.f;
import com.aadhk.restpos.PayInOutActivity;
import com.aadhk.restpos.b.a;
import com.aadhk.restpos.bean.CashRegister;

// Referenced classes of package com.aadhk.restpos.d:
//            by

final class bz
    implements f
{

    final by a;

    bz(by by1)
    {
        a = by1;
        super();
    }

    public final void a(Object obj)
    {
        CashRegister cashregister = (CashRegister)obj;
        com.aadhk.restpos.d.by.a(a).c().b(cashregister);
        com.aadhk.restpos.d.by.a(a).a();
    }
}
