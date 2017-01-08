// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.TakeOrderActivity;

// Referenced classes of package com.aadhk.restpos.d:
//            l

final class m extends android.support.v4.view.ViewPager.SimpleOnPageChangeListener
{

    final l a;

    m(l l1)
    {
        a = l1;
        super();
    }

    public final void onPageSelected(int i)
    {
        super.onPageSelected(i);
        ((POSApp)l.a().getApplicationContext()).a(i);
    }
}
