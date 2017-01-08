// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.aadhk.restpos.TakeOrderActivity;

// Referenced classes of package com.aadhk.restpos.d:
//            du, en, dt, ds

public final class dr extends Fragment
    implements android.view.View.OnClickListener
{

    private TakeOrderActivity a;
    private ViewPager b;
    private TextView c;
    private TextView d;
    private View e;
    private View f;
    private boolean g;
    private en h;
    private du i;
    private View j;

    public dr()
    {
    }

    static en a(dr dr1)
    {
        return dr1.h;
    }

    static void a(dr dr1, boolean flag)
    {
        if (flag)
        {
            dr1.c.setTextColor(dr1.getResources().getColor(0x7f07006b));
            dr1.d.setTextColor(dr1.getResources().getColor(0x7f07006c));
            dr1.e.setVisibility(0);
            dr1.f.setVisibility(4);
            return;
        } else
        {
            dr1.c.setTextColor(dr1.getResources().getColor(0x7f07006c));
            dr1.d.setTextColor(dr1.getResources().getColor(0x7f07006b));
            dr1.e.setVisibility(4);
            dr1.f.setVisibility(0);
            return;
        }
    }

    static du b(dr dr1)
    {
        return dr1.i;
    }

    public final void a(int k)
    {
        i.a(k);
        h.a(k);
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        b.setAdapter(new dt(this, getChildFragmentManager()));
        b.setOnPageChangeListener(new ds(this));
        if (g)
        {
            b.setCurrentItem(1);
            return;
        } else
        {
            b.setCurrentItem(0);
            return;
        }
    }

    public final void onAttach(Activity activity)
    {
        super.onAttach(activity);
        a = (TakeOrderActivity)activity;
    }

    public final void onClick(View view)
    {
        if (view == c)
        {
            b.setCurrentItem(0);
            g = false;
        } else
        if (view == d)
        {
            b.setCurrentItem(1);
            g = true;
            return;
        }
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        boolean flag;
        if (getArguments() != null)
        {
            flag = getArguments().getBoolean("bundleOrdered");
        } else
        {
            flag = false;
        }
        g = flag;
        a.b(g);
        h = new en();
        i = new du();
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        if (viewgroup != null)
        {
            viewgroup.removeAllViews();
        }
        j = layoutinflater.inflate(0x7f0300a8, viewgroup, false);
        c = (TextView)j.findViewById(0x7f090285);
        d = (TextView)j.findViewById(0x7f090286);
        c.setOnClickListener(this);
        d.setOnClickListener(this);
        b = (ViewPager)j.findViewById(0x7f090186);
        e = j.findViewById(0x7f090287);
        f = j.findViewById(0x7f090288);
        return j;
    }
}
