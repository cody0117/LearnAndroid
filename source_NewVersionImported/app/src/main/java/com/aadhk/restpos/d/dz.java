// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import android.view.ViewGroup;
import com.aadhk.restpos.f.i;

// Referenced classes of package com.aadhk.restpos.d:
//            dy, dv

final class dz extends FragmentStatePagerAdapter
{

    final dy a;

    public dz(dy dy1, FragmentManager fragmentmanager)
    {
        a = dy1;
        super(fragmentmanager);
    }

    public final int getCount()
    {
        return 2000;
    }

    public final Fragment getItem(int j)
    {
        int k = j - 1000;
        String as[];
        String s;
        String s1;
        Bundle bundle;
        dv dv1;
        if (3 == dy.a(a))
        {
            as = i.b(k, dy.b(a));
        } else
        if (5 == dy.a(a))
        {
            as = i.a(dy.c(a), dy.d(a), k);
        } else
        {
            as = i.a(dy.a(a), k);
        }
        s = as[0];
        s1 = as[1];
        bundle = new Bundle();
        bundle.putString("fromDate", s);
        bundle.putString("toDate", s1);
        dv1 = new dv();
        dv1.setArguments(bundle);
        return dv1;
    }

    public final int getItemPosition(Object obj)
    {
        return -2;
    }

    public final Object instantiateItem(ViewGroup viewgroup, int j)
    {
        return super.instantiateItem(viewgroup, j);
    }
}
