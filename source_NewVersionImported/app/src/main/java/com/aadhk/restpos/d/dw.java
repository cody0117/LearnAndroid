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
import com.aadhk.restpos.f.i;
import com.aadhk.restpos.f.j;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            dv, dx

final class dw extends aa
{

    final dv h;

    public dw(dv dv1, Context context)
    {
        h = dv1;
        super(context);
    }

    public final int getCount()
    {
        return dv.a(h).size();
    }

    public final Object getItem(int k)
    {
        return dv.a(h).get(k);
    }

    public final long getItemId(int k)
    {
        return (long)k;
    }

    public final View getView(int k, View view, ViewGroup viewgroup)
    {
        dx dx1;
        Order order;
        if (view == null)
        {
            view = b.inflate(0x7f0300b2, null);
            dx1 = new dx(this, (byte)0);
            dx1.a = (TextView)view.findViewById(0x7f0b026c);
            dx1.b = (TextView)view.findViewById(0x7f0b026d);
            dx1.c = (TextView)view.findViewById(0x7f0b026e);
            dx1.d = (TextView)view.findViewById(0x7f0b0237);
            view.setTag(dx1);
        } else
        {
            dx1 = (dx)view.getTag();
        }
        order = (Order)getItem(k);
        if (order.isHasVoidItem())
        {
            view.setBackgroundResource(0x7f080072);
        } else
        {
            view.setBackgroundResource(0);
        }
        dx1.a.setText((new StringBuilder()).append(order.getOrderNum()).toString());
        dx1.b.setText(order.getTableName());
        dx1.c.setText(i.d(order.getEndTime(), dv.b(h)));
        dx1.d.setText(j.a(g, order.getAmount(), d));
        return view;
    }
}
