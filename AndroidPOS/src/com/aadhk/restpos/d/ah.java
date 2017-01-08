// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.TakeOrderActivity;

// Referenced classes of package com.aadhk.restpos.d:
//            ag

final class ah extends android.support.v4.view.ViewPager.SimpleOnPageChangeListener
{

    final ag a;

    ah(ag ag1)
    {
        a = ag1;
        super();
    }

    public final void onPageSelected(int i)
    {
        super.onPageSelected(i);
        ((POSApp)ag.b().getApplicationContext()).a(i);
    }
}
