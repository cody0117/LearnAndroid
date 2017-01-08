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
import com.aadhk.restpos.f.j;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.a:
//            aa, ac

public final class ab extends aa
{

    private List h;

    public ab(Context context, List list)
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
        ac ac1;
        Order order;
        if (view == null)
        {
            view = b.inflate(0x7f03009e, null);
            ac1 = new ac(this, (byte)0);
            ac1.a = (TextView)view.findViewById(0x7f0b023b);
            ac1.b = (TextView)view.findViewById(0x7f0b023f);
            ac1.c = (TextView)view.findViewById(0x7f0b023c);
            ac1.d = (TextView)view.findViewById(0x7f0b023d);
            ac1.e = (TextView)view.findViewById(0x7f0b023e);
            view.setTag(ac1);
        } else
        {
            ac1 = (ac)view.getTag();
        }
        order = (Order)getItem(i);
        if (order.getTableId() == -1L)
        {
            ac1.c.setVisibility(8);
            ac1.a.setText(order.getTableName());
        } else
        if (order.getTableId() == -2L)
        {
            ac1.c.setVisibility(8);
            ac1.a.setText(order.getTableName());
        } else
        if (order.getTableId() == 0L)
        {
            ac1.c.setVisibility(8);
            ac1.a.setText(order.getTableName());
        } else
        {
            ac1.c.setVisibility(0);
        }
        ac1.b.setText((new StringBuilder("#")).append(order.getOrderNum()).toString());
        ac1.c.setText(order.getTableName());
        ac1.e.setText(order.getStartTime().substring(10, 16));
        ac1.d.setText(j.a(g, order.getAmount(), d));
        return view;
    }
}
