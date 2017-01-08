// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.f.i;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.a:
//            aa, az

public final class ay extends aa
{

    private List h;

    public ay(Context context, List list)
    {
        super(context);
        h = list;
    }

    public final int getCount()
    {
        return h.size();
    }

    public final Object getItem(int j)
    {
        return h.get(j);
    }

    public final long getItemId(int j)
    {
        return (long)j;
    }

    public final View getView(int j, View view, ViewGroup viewgroup)
    {
        az az1;
        Order order;
        if (view == null)
        {
            view = b.inflate(0x7f0300ab, null);
            az1 = new az(this, (byte)0);
            az1.a = (TextView)view.findViewById(0x7f0b012c);
            az1.b = (TextView)view.findViewById(0x7f0b0245);
            az1.c = (TextView)view.findViewById(0x7f0b0246);
            az1.d = (TextView)view.findViewById(0x7f0b0147);
            az1.e = (LinearLayout)view.findViewById(0x7f0b0244);
            view.setTag(az1);
        } else
        {
            az1 = (az)view.getTag();
        }
        order = (Order)getItem(j);
        az1.a.setText(order.getTableName());
        if (order.getId() > 0L)
        {
            az1.b.setText((new StringBuilder()).append(order.getOrderNum()).toString());
            az1.c.setText(i.c(order.getStartTime()));
        } else
        {
            az1.b.setText("");
            az1.c.setText("");
        }
        az1.e.setVisibility(8);
        return view;
    }
}
