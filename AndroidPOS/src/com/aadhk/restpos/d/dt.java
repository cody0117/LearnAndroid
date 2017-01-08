// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;

// Referenced classes of package com.aadhk.restpos.d:
//            dr

final class dt extends FragmentPagerAdapter
{

    final dr a;

    public dt(dr dr1, FragmentManager fragmentmanager)
    {
        a = dr1;
        super(fragmentmanager);
    }

    public final int getCount()
    {
        return 2;
    }

    public final Fragment getItem(int i)
    {
        if (i == 0)
        {
            return dr.a(a);
        } else
        {
            return dr.b(a);
        }
    }
}
