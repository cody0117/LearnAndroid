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
//            ag, ak

public final class aj extends FragmentStatePagerAdapter
{

    final ag a;

    public aj(ag ag1, FragmentManager fragmentmanager)
    {
        a = ag1;
        super(fragmentmanager);
    }

    public final int getCount()
    {
        return ag.c().size();
    }

    public final Fragment getItem(int i)
    {
        return ak.a((Category)ag.c().get(i));
    }

    public final CharSequence getPageTitle(int i)
    {
        return ((Category)ag.c().get(i)).getName();
    }
}
