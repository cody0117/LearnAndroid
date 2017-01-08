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
//            fc, fe

final class fd extends aa
{

    final fc h;

    public fd(fc fc1, Context context)
    {
        h = fc1;
        super(context);
    }

    public final int getCount()
    {
        return fc.a(h).size();
    }

    public final Object getItem(int i)
    {
        return fc.a(h).get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        fe fe1;
        Order order;
        if (view == null)
        {
            view = b.inflate(0x7f0300bb, null);
            fe1 = new fe(this, (byte)0);
            fe1.a = (TextView)view.findViewById(0x7f0b026c);
            fe1.b = (TextView)view.findViewById(0x7f0b027b);
            fe1.c = (TextView)view.findViewById(0x7f0b027c);
            fe1.d = (TextView)view.findViewById(0x7f0b0278);
            fe1.e = (TextView)view.findViewById(0x7f0b020d);
            view.setTag(fe1);
        } else
        {
            fe1 = (fe)view.getTag();
        }
        order = (Order)getItem(i);
        fe1.a.setText((new StringBuilder()).append(order.getOrderNum()).toString());
        fe1.b.setText(order.getTableName());
        fe1.c.setText(order.getCancelPerson());
        fe1.d.setText(order.getCancelReason());
        fe1.e.setText(order.getEndTime());
        return view;
    }
}
