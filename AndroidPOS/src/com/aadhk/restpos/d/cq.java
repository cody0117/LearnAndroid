// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import com.aadhk.restpos.bean.Category;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            cf, cr

final class cq extends FragmentStatePagerAdapter
{

    final cf a;

    public cq(cf cf1, FragmentManager fragmentmanager)
    {
        a = cf1;
        super(fragmentmanager);
    }

    public final int getCount()
    {
        return cf.f(a).size();
    }

    public final Fragment getItem(int i)
    {
        return cr.a((Category)cf.f(a).get(i));
    }

    public final int getItemPosition(Object obj)
    {
        return -2;
    }

    public final CharSequence getPageTitle(int i)
    {
        return ((Category)cf.f(a).get(i)).getName();
    }
}
