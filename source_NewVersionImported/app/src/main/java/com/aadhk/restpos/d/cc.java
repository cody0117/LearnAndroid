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
//            cb, by

final class cc extends FragmentStatePagerAdapter
{

    final cb a;

    public cc(cb cb1, FragmentManager fragmentmanager)
    {
        a = cb1;
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
        by by1;
        if (3 == cb.a(a))
        {
            as = i.b(k, cb.b(a));
        } else
        if (5 == cb.a(a))
        {
            as = i.a(cb.c(a), cb.d(a), k);
        } else
        {
            as = i.a(cb.a(a), k);
        }
        s = as[0];
        s1 = as[1];
        bundle = new Bundle();
        bundle.putString("fromDate", s);
        bundle.putString("toDate", s1);
        by1 = new by();
        by1.setArguments(bundle);
        return by1;
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
