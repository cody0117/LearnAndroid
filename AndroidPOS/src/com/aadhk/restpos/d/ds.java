// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;


// Referenced classes of package com.aadhk.restpos.d:
//            dr

final class ds extends android.support.v4.view.ViewPager.SimpleOnPageChangeListener
{

    final dr a;

    ds(dr dr1)
    {
        a = dr1;
        super();
    }

    public final void onPageSelected(int i)
    {
        if (i == 0)
        {
            dr.a(a, true);
            return;
        } else
        {
            dr.a(a, false);
            return;
        }
    }
}
