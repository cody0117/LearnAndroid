// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.aadhk.a.h;
import com.aadhk.a.k;
import com.aadhk.a.m;
import com.aadhk.b.a;
import com.aadhk.b.b;
import com.bugsense.trace.BugSenseHandler;

// Referenced classes of package com.aadhk.restpos:
//            PurchaseActivity

final class cw
    implements h
{

    final PurchaseActivity a;

    cw(PurchaseActivity purchaseactivity)
    {
        a = purchaseactivity;
        super();
    }

    public final void a(k k1, m m1)
    {
        if (k1.b())
        {
            return;
        }
        try
        {
            b.a(a, m1);
            com.aadhk.restpos.PurchaseActivity.a(a, m1.c());
            return;
        }
        catch (a a1)
        {
            BugSenseHandler.sendException(a1);
            a1.printStackTrace();
            return;
        }
    }
}
