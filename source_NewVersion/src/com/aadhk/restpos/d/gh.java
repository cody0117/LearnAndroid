// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;

// Referenced classes of package com.aadhk.restpos.d:
//            gf, gi

final class gh extends BaseAdapter
{

    final gf a;
    private gi b;

    private gh(gf gf1)
    {
        a = gf1;
        super();
    }

    gh(gf gf1, byte byte0)
    {
        this(gf1);
    }

    public final int getCount()
    {
        return gf.c(a).length;
    }

    public final Object getItem(int i)
    {
        return gf.c(a)[i];
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            view = a.getActivity().getLayoutInflater().inflate(0x7f030091, null);
            b = new gi(a, (byte)0);
            b.a = (TextView)view.findViewById(0x7f0b0231);
            b.b = (LinearLayout)view.findViewById(0x7f0b0230);
            view.setTag(b);
        } else
        {
            b = (gi)view.getTag();
        }
        b.a.setText(gf.c(a)[i]);
        if (gf.d(a) == i)
        {
            b.b.setBackgroundResource(0x7f080062);
            return view;
        } else
        {
            b.b.setBackgroundResource(0x7f080039);
            return view;
        }
    }
}
