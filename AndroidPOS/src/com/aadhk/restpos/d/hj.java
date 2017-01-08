// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import android.view.ViewGroup;
import com.aadhk.restpos.util.o;

// Referenced classes of package com.aadhk.restpos.d:
//            hi, he

final class hj extends FragmentStatePagerAdapter
{

    final hi a;

    public hj(hi hi1, FragmentManager fragmentmanager)
    {
        a = hi1;
        super(fragmentmanager);
    }

    public final int getCount()
    {
        return 2000;
    }

    public final Fragment getItem(int i)
    {
        int j = i - 1000;
        String as[];
        String s;
        String s1;
        Bundle bundle;
        if (3 == hi.a(a))
        {
            as = o.b(j, hi.b(a));
        } else
        if (5 == hi.a(a))
        {
            as = o.a(hi.c(a), hi.d(a), j);
        } else
        {
            as = o.a(hi.a(a), j);
        }
        s = as[0];
        s1 = as[1];
        bundle = new Bundle();
        bundle.putString("fromDate", s);
        bundle.putString("toDate", s1);
        hi.a(a, new he());
        hi.e(a).setArguments(bundle);
        return hi.e(a);
    }

    public final int getItemPosition(Object obj)
    {
        return -2;
    }

    public final Object instantiateItem(ViewGroup viewgroup, int i)
    {
        return super.instantiateItem(viewgroup, i);
    }
}
