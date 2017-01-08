// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.restpos.KitchenActivity;
import com.aadhk.restpos.util.ObservableScrollView;

// Referenced classes of package com.aadhk.restpos.d:
//            aq

final class au
    implements Runnable
{

    final aq a;

    au(aq aq1)
    {
        a = aq1;
        super();
    }

    public final void run()
    {
        aq.b(a).scrollTo(0, aq.a(a).d());
    }
}
