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
//            l, p

public final class o extends FragmentStatePagerAdapter
{

    final l a;

    public o(l l1, FragmentManager fragmentmanager)
    {
        a = l1;
        super(fragmentmanager);
    }

    public final int getCount()
    {
        return l.b().size();
    }

    public final Fragment getItem(int i)
    {
        return p.a((Category)l.b().get(i));
    }

    public final CharSequence getPageTitle(int i)
    {
        return ((Category)l.b().get(i)).getName();
    }
}
