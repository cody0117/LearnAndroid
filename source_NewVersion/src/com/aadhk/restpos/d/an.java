// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.restpos.MgrItemActivity;
import com.aadhk.restpos.bean.Category;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            ag

final class an extends android.support.v4.view.ViewPager.SimpleOnPageChangeListener
{

    final ag a;

    an(ag ag1)
    {
        a = ag1;
        super();
    }

    public final void onPageSelected(int i)
    {
        super.onPageSelected(i);
        ag.a(a, ((Category)ag.e(a).get(i)).getId());
        ag.d(a).a(ag.b(a));
        ag.d(a).a(i);
    }
}
