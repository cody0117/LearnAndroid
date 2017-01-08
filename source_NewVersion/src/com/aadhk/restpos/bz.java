// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.aadhk.product.library.b.f;
import com.aadhk.restpos.b.m;
import com.aadhk.restpos.bean.Order;

// Referenced classes of package com.aadhk.restpos:
//            TakeOrderActivity

final class bz
    implements f
{

    final TakeOrderActivity a;

    bz(TakeOrderActivity takeorderactivity)
    {
        a = takeorderactivity;
        super();
    }

    public final void a(Object obj)
    {
        TakeOrderActivity.a(a).setPersonNum(Integer.parseInt(obj.toString()));
        TakeOrderActivity.b(a).a(TakeOrderActivity.a(a).getId(), TakeOrderActivity.a(a).getPersonNum());
        a.f();
    }
}
