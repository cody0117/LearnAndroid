// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.aadhk.product.library.b.g;
import com.aadhk.restpos.bean.ServiceFee;
import com.aadhk.restpos.c.d;

// Referenced classes of package com.aadhk.restpos:
//            ServiceFeeActivity, dd

final class dc
    implements g
{

    final ServiceFee a;
    final ServiceFeeActivity b;

    dc(ServiceFeeActivity servicefeeactivity, ServiceFee servicefee)
    {
        b = servicefeeactivity;
        a = servicefee;
        super();
    }

    public final void a()
    {
        d d1 = new d(b);
        String s = b.getString(0x7f0802d8);
        Object aobj[] = new Object[1];
        aobj[0] = a.getName();
        d1.setTitle(String.format(s, aobj));
        d1.a(new dd(this));
        d1.show();
    }
}
