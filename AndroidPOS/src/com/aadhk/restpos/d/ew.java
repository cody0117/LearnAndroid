// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.aadhk.restpos.PayInOutActivity;
import com.aadhk.restpos.util.r;

// Referenced classes of package com.aadhk.restpos.d:
//            ex

public final class ew extends Fragment
{

    private PayInOutActivity a;
    private int b;
    private int c;
    private String d;
    private String e;
    private ex f;
    private ViewPager g;
    private View h;
    private Fragment i;

    public ew()
    {
    }

    static int a(ew ew1)
    {
        return ew1.b;
    }

    static Fragment a(ew ew1, Fragment fragment)
    {
        ew1.i = fragment;
        return fragment;
    }

    static int b(ew ew1)
    {
        return ew1.c;
    }

    static String c(ew ew1)
    {
        return ew1.d;
    }

    static String d(ew ew1)
    {
        return ew1.e;
    }

    static Fragment e(ew ew1)
    {
        return ew1.i;
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        b = a.d();
        d = a.e();
        e = a.f();
        f = new ex(this, getChildFragmentManager());
        g = (ViewPager)h.findViewById(0x7f090186);
        g.setAdapter(f);
        g.setCurrentItem(1000);
    }

    public final void onAttach(Activity activity)
    {
        a = (PayInOutActivity)activity;
        super.onAttach(activity);
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        c = (new r(a)).f();
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        h = layoutinflater.inflate(0x7f0300c5, viewgroup, false);
        return h;
    }
}
