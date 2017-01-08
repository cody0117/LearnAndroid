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
import com.aadhk.restpos.f.l;

// Referenced classes of package com.aadhk.restpos.d:
//            dz

public final class dy extends Fragment
{

    private ReceiptListActivity a;
    private int b;
    private int c;
    private String d;
    private String e;
    private dz f;
    private ViewPager g;
    private View h;

    public dy()
    {
    }

    static int a(dy dy1)
    {
        return dy1.b;
    }

    static int b(dy dy1)
    {
        return dy1.c;
    }

    static String c(dy dy1)
    {
        return dy1.d;
    }

    static String d(dy dy1)
    {
        return dy1.e;
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        b = a.g();
        d = a.e();
        e = a.f();
        f = new dz(this, getChildFragmentManager());
        g = (ViewPager)h.findViewById(0x7f0b0141);
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
        c = (new l(a)).e();
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        h = layoutinflater.inflate(0x7f0300a7, viewgroup, false);
        return h;
    }
}
