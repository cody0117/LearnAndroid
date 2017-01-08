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
import com.aadhk.restpos.ReceiptListActivity;
import com.aadhk.restpos.util.r;

// Referenced classes of package com.aadhk.restpos.d:
//            hj

public final class hi extends Fragment
{

    private ReceiptListActivity a;
    private int b;
    private int c;
    private String d;
    private String e;
    private hj f;
    private ViewPager g;
    private View h;
    private Fragment i;

    public hi()
    {
    }

    static int a(hi hi1)
    {
        return hi1.b;
    }

    static Fragment a(hi hi1, Fragment fragment)
    {
        hi1.i = fragment;
        return fragment;
    }

    static int b(hi hi1)
    {
        return hi1.c;
    }

    static String c(hi hi1)
    {
        return hi1.d;
    }

    static String d(hi hi1)
    {
        return hi1.e;
    }

    static Fragment e(hi hi1)
    {
        return hi1.i;
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        b = a.e();
        d = a.c();
        e = a.d();
        f = new hj(this, getChildFragmentManager());
        g = (ViewPager)h.findViewById(0x7f090186);
        g.setAdapter(f);
        g.setCurrentItem(1000);
    }

    public final void onAttach(Activity activity)
    {
        a = (ReceiptListActivity)activity;
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
