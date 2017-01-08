// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;


// Referenced classes of package com.aadhk.restpos.d:
//            bh

final class bi extends android.support.v4.view.ViewPager.SimpleOnPageChangeListener
{

    final bh a;

    bi(bh bh1)
    {
        a = bh1;
        super();
    }

    public final void onPageSelected(int i)
    {
        if (i == 0)
        {
            bh.a(a, true);
            return;
        } else
        {
            bh.a(a, false);
            return;
        }
    }
}
