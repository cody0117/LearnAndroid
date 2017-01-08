// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.util.p;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.a:
//            ag, ai

public final class ah extends ag
{

    private List h;

    public ah(Context context, List list)
    {
        super(context);
        h = list;
    }

    public final int getCount()
    {
        return h.size();
    }

    public final Object getItem(int i)
    {
        return h.get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        ai ai1;
        Order order;
        if (view == null)
        {
            view = b.inflate(0x7f0300bc, null);
            ai1 = new ai(this, (byte)0);
            ai1.a = (TextView)view.findViewById(0x7f0902af);
            ai1.b = (TextView)view.findViewById(0x7f0902b3);
            ai1.c = (TextView)view.findViewById(0x7f0902b0);
            ai1.d = (TextView)view.findViewById(0x7f0902b1);
            ai1.e = (TextView)view.findViewById(0x7f0902b2);
            view.setTag(ai1);
        } else
        {
            ai1 = (ai)view.getTag();
        }
        order = (Order)getItem(i);
        if (order.getTableId() == -1L)
        {
            ai1.c.setVisibility(8);
            ai1.a.setText(order.getTableName());
        } else
        if (order.getTableId() == -2L)
        {
            ai1.c.setVisibility(8);
            ai1.a.setText(order.getTableName());
        } else
        if (order.getTableId() == 0L)
        {
            ai1.c.setVisibility(8);
            ai1.a.setText(order.getTableName());
        } else
        {
            ai1.c.setVisibility(0);
        }
        ai1.b.setText((new StringBuilder("#")).append(order.getOrderNum()).toString());
        ai1.c.setText(order.getTableName());
        ai1.e.setText(order.getOrderTime().substring(10, 16));
        ai1.d.setText(p.a(g, order.getAmount(), d));
        return view;
    }
}
