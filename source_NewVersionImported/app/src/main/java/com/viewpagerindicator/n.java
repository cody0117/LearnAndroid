// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.viewpagerindicator;

import android.support.v4.view.ViewPager;
import android.view.View;

// Referenced classes of package com.viewpagerindicator:
//            q, TabPageIndicator

final class n
    implements android.view.View.OnClickListener
{

    final TabPageIndicator a;

    n(TabPageIndicator tabpageindicator)
    {
        a = tabpageindicator;
        super();
    }

    public final void onClick(View view)
    {
        q q1 = (q)view;
        int i = TabPageIndicator.a(a).getCurrentItem();
        int j = q1.a();
        TabPageIndicator.a(a).setCurrentItem(j);
        if (i == j && TabPageIndicator.b(a) != null)
        {
            TabPageIndicator.b(a);
        }
    }
}
