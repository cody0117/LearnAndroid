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
import com.aadhk.restpos.f.l;

// Referenced classes of package com.aadhk.restpos.d:
//            cc

public final class cb extends Fragment
{

    private PayInOutActivity a;
    private int b;
    private int c;
    private String d;
    private String e;
    private cc f;
    private ViewPager g;
    private View h;

    public cb()
    {
    }

    static int a(cb cb1)
    {
        return cb1.b;
    }

    static int b(cb cb1)
    {
        return cb1.c;
    }

    static String c(cb cb1)
    {
        return cb1.d;
    }

    static String d(cb cb1)
    {
        return cb1.e;
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        b = a.d();
        d = a.e();
        e = a.f();
        f = new cc(this, getChildFragmentManager());
        g = (ViewPager)h.findViewById(0x7f0b0141);
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
        c = (new l(a)).e();
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        h = layoutinflater.inflate(0x7f0300a7, viewgroup, false);
        return h;
    }
}
