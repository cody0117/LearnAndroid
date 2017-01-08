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
//            ew, eq

final class ex extends FragmentStatePagerAdapter
{

    final ew a;

    public ex(ew ew1, FragmentManager fragmentmanager)
    {
        a = ew1;
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
        if (3 == ew.a(a))
        {
            as = o.b(j, ew.b(a));
        } else
        if (5 == ew.a(a))
        {
            as = o.a(ew.c(a), ew.d(a), j);
        } else
        {
            as = o.a(ew.a(a), j);
        }
        s = as[0];
        s1 = as[1];
        bundle = new Bundle();
        bundle.putString("fromDate", s);
        bundle.putString("toDate", s1);
        ew.a(a, new eq());
        ew.e(a).setArguments(bundle);
        return ew.e(a);
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
