// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.restpos.MgrItemActivity;
import com.aadhk.restpos.bean.Category;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            cf

final class ch extends android.support.v4.view.ViewPager.SimpleOnPageChangeListener
{

    final cf a;

    ch(cf cf1)
    {
        a = cf1;
        super();
    }

    public final void onPageSelected(int i)
    {
        super.onPageSelected(i);
        cf.a(a, ((Category)cf.f(a).get(i)).getId());
        a.a.a(cf.b(a));
        a.a.a(i);
        a.a.a(((Category)cf.f(a).get(i)).getItemList());
    }
}
