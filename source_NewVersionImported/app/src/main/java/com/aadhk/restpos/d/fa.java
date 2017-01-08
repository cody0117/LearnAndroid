// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.aadhk.restpos.a.aa;
import com.aadhk.restpos.bean.Order;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            ez, fb

final class fa extends aa
{

    final ez h;

    public fa(ez ez1, Context context)
    {
        h = ez1;
        super(context);
    }

    public final int getCount()
    {
        return ez.a(h).size();
    }

    public final Object getItem(int i)
    {
        return ez.a(h).get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        fb fb1;
        Order order;
        if (view == null)
        {
            view = b.inflate(0x7f0300ba, null);
            fb1 = new fb(this, (byte)0);
            fb1.a = (TextView)view.findViewById(0x7f0b0278);
            fb1.b = (TextView)view.findViewById(0x7f0b0279);
            fb1.c = (TextView)view.findViewById(0x7f0b020d);
            view.setTag(fb1);
        } else
        {
            fb1 = (fb)view.getTag();
        }
        order = (Order)getItem(i);
        fb1.a.setText(order.getCancelReason());
        fb1.b.setText(order.getCancelPerson());
        fb1.c.setText(order.getEndTime());
        return view;
    }
}
