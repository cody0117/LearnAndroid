// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.aadhk.restpos.a.ag;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.util.o;
import com.aadhk.restpos.util.p;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            he, hg

final class hf extends ag
{

    final he h;

    public hf(he he1, Context context)
    {
        h = he1;
        super(context);
    }

    public final int getCount()
    {
        return he.g(h).size();
    }

    public final Object getItem(int i)
    {
        return he.g(h).get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        hg hg1;
        Order order;
        if (view == null)
        {
            view = b.inflate(0x7f0300d1, null);
            hg1 = new hg(this, (byte)0);
            hg1.a = (TextView)view.findViewById(0x7f0902de);
            hg1.b = (TextView)view.findViewById(0x7f0902df);
            hg1.c = (TextView)view.findViewById(0x7f0902e0);
            hg1.d = (TextView)view.findViewById(0x7f0902ab);
            view.setTag(hg1);
        } else
        {
            hg1 = (hg)view.getTag();
        }
        order = (Order)getItem(i);
        if (order.isHasVoidItem())
        {
            view.setBackgroundResource(0x7f070089);
        } else
        {
            view.setBackgroundResource(0);
        }
        hg1.a.setText((new StringBuilder()).append(order.getOrderNum()).toString());
        hg1.b.setText(order.getTableName());
        hg1.c.setText(o.a(order.getEndTime(), he.h(h), he.i(h)));
        hg1.d.setText(p.a(g, order.getAmount(), d));
        return view;
    }
}
