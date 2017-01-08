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
//            ip, is

final class ir extends BaseAdapter
{

    final ip a;
    private is b;

    private ir(ip ip1)
    {
        a = ip1;
        super();
    }

    ir(ip ip1, byte byte0)
    {
        this(ip1);
    }

    public final int getCount()
    {
        return ip.c(a).length;
    }

    public final Object getItem(int i)
    {
        return ip.c(a)[i];
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            view = a.getActivity().getLayoutInflater().inflate(0x7f0300a2, null);
            b = new is(a, (byte)0);
            b.a = (TextView)view.findViewById(0x7f09027a);
            b.b = (LinearLayout)view.findViewById(0x7f090279);
            view.setTag(b);
        } else
        {
            b = (is)view.getTag();
        }
        b.a.setText(ip.c(a)[i]);
        if (ip.d(a) == i)
        {
            b.b.setBackgroundResource(0x7f070078);
            return view;
        } else
        {
            b.b.setBackgroundResource(0x7f07003b);
            return view;
        }
    }
}
