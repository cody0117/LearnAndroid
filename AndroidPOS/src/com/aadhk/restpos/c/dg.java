// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.aadhk.restpos.bean.Order;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.c:
//            de, dh

final class dg extends BaseAdapter
{

    final de a;

    private dg(de de1)
    {
        a = de1;
        super();
    }

    dg(de de1, byte byte0)
    {
        this(de1);
    }

    public final int getCount()
    {
        return de.a(a).size();
    }

    public final Object getItem(int i)
    {
        return de.a(a).get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        dh dh1;
        Order order;
        if (view == null)
        {
            view = de.b(a).inflate(0x7f0300ac, null);
            dh1 = new dh(this, (byte)0);
            dh1.a = (TextView)view.findViewById(0x7f090099);
            dh1.b = (TextView)view.findViewById(0x7f090290);
            view.setTag(dh1);
        } else
        {
            dh1 = (dh)view.getTag();
        }
        order = (Order)getItem(i);
        dh1.a.setText(order.getTableName());
        dh1.b.setText((new StringBuilder("(")).append(order.getOrderNum()).append(")").toString());
        if (!TextUtils.isEmpty(order.getOrderNum()))
        {
            dh1.b.setVisibility(0);
            return view;
        } else
        {
            dh1.b.setVisibility(8);
            return view;
        }
    }
}
