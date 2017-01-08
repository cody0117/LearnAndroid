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
//            ag, ap

final class ao extends FragmentStatePagerAdapter
{

    final ag a;

    public ao(ag ag1, FragmentManager fragmentmanager)
    {
        a = ag1;
        super(fragmentmanager);
    }

    public final int getCount()
    {
        return ag.e(a).size();
    }

    public final Fragment getItem(int i)
    {
        return ap.a(((Category)ag.e(a).get(i)).getId());
    }

    public final int getItemPosition(Object obj)
    {
        return -2;
    }

    public final CharSequence getPageTitle(int i)
    {
        return ((Category)ag.e(a).get(i)).getName();
    }
}
