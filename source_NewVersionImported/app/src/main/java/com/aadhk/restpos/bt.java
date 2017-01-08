// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import android.view.ViewGroup;
import com.aadhk.restpos.d.dy;
import com.aadhk.restpos.d.ea;
import com.aadhk.restpos.d.ef;
import com.aadhk.restpos.d.eu;
import com.aadhk.restpos.d.ez;
import com.aadhk.restpos.d.fc;
import com.aadhk.restpos.f.i;

// Referenced classes of package com.aadhk.restpos:
//            ReportActivity

final class bt extends FragmentStatePagerAdapter
{

    final ReportActivity a;

    public bt(ReportActivity reportactivity, FragmentManager fragmentmanager)
    {
        a = reportactivity;
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
        Object obj;
        if (3 == ReportActivity.d(a))
        {
            as = i.b(k, ReportActivity.e(a));
        } else
        if (5 == ReportActivity.d(a))
        {
            as = i.a(ReportActivity.f(a), ReportActivity.g(a), k);
        } else
        {
            as = i.a(ReportActivity.d(a), k);
        }
        s = as[0];
        s1 = as[1];
        bundle = new Bundle();
        bundle.putString("fromDate", s);
        bundle.putString("toDate", s1);
        if (ReportActivity.h(a) == 1)
        {
            obj = new fc();
        } else
        if (ReportActivity.h(a) == 3)
        {
            obj = new eu();
        } else
        if (ReportActivity.h(a) == 2)
        {
            obj = new ez();
        } else
        if (ReportActivity.h(a) == 5)
        {
            obj = new ea();
        } else
        if (ReportActivity.h(a) == 6)
        {
            obj = new ef();
        } else
        {
            obj = new dy();
        }
        ((Fragment) (obj)).setArguments(bundle);
        return ((Fragment) (obj));
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
