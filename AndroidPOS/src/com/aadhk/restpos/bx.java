// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.aadhk.product.library.b.f;
import com.aadhk.restpos.bean.CloseOutCashRegister;

// Referenced classes of package com.aadhk.restpos:
//            PayCloseOutActivity

final class bx
    implements f
{

    final PayCloseOutActivity a;

    bx(PayCloseOutActivity paycloseoutactivity)
    {
        a = paycloseoutactivity;
        super();
    }

    public final void a(Object obj)
    {
        String s = obj.toString();
        PayCloseOutActivity.a(a).setTime(s);
        PayCloseOutActivity.w(a);
    }
}
