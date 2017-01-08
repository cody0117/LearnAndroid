// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

// Referenced classes of package com.aadhk.restpos.d:
//            bk, bv, bj, bi

public final class bh extends Fragment
    implements android.view.View.OnClickListener
{

    private ViewPager a;
    private TextView b;
    private TextView c;
    private View d;
    private View e;
    private boolean f;
    private bv g;
    private bk h;
    private View i;

    public bh()
    {
    }

    static bv a(bh bh1)
    {
        return bh1.g;
    }

    static void a(bh bh1, boolean flag)
    {
        if (flag)
        {
            bh1.b.setTextColor(bh1.getResources().getColor(0x7f080054));
            bh1.c.setTextColor(bh1.getResources().getColor(0x7f080055));
            bh1.d.setVisibility(0);
            bh1.e.setVisibility(4);
            return;
        } else
        {
            bh1.b.setTextColor(bh1.getResources().getColor(0x7f080055));
            bh1.c.setTextColor(bh1.getResources().getColor(0x7f080054));
            bh1.d.setVisibility(4);
            bh1.e.setVisibility(0);
            return;
        }
    }

    static bk b(bh bh1)
    {
        return bh1.h;
    }

    public final void a(int j)
    {
        h.a(j);
        g.a(j);
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        a.setAdapter(new bj(this, getChildFragmentManager()));
        a.setOnPageChangeListener(new bi(this));
        if (f)
        {
            a.setCurrentItem(1);
            return;
        } else
        {
            a.setCurrentItem(0);
            return;
        }
    }

    public final void onClick(View view)
    {
        if (view == b)
        {
            a.setCurrentItem(0);
            f = false;
        } else
        if (view == c)
        {
            a.setCurrentItem(1);
            f = true;
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
        f = flag;
        g = new bv();
        h = new bk();
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        if (viewgroup != null)
        {
            viewgroup.removeAllViews();
        }
        i = layoutinflater.inflate(0x7f03008b, viewgroup, false);
        b = (TextView)i.findViewById(0x7f0b021e);
        c = (TextView)i.findViewById(0x7f0b021f);
        b.setOnClickListener(this);
        c.setOnClickListener(this);
        a = (ViewPager)i.findViewById(0x7f0b0141);
        d = i.findViewById(0x7f0b0220);
        e = i.findViewById(0x7f0b0221);
        return i;
    }
}
