// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.aadhk.a.j;
import com.aadhk.a.k;
import com.aadhk.a.l;

// Referenced classes of package com.aadhk.restpos:
//            PurchaseActivity

final class cv
    implements j
{

    final PurchaseActivity a;

    cv(PurchaseActivity purchaseactivity)
    {
        a = purchaseactivity;
        super();
    }

    public final void a(k k1, l l)
    {
        if (k1.b())
        {
            return;
        } else
        {
            PurchaseActivity.a(a, l);
            PurchaseActivity.b(a, l);
            PurchaseActivity.c(a);
            return;
        }
    }
}
