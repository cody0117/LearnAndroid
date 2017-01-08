// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.aadhk.restpos.bean.Customer;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            j, o

final class n extends BaseAdapter
{

    final j a;

    private n(j j1)
    {
        a = j1;
        super();
    }

    n(j j1, byte byte0)
    {
        this(j1);
    }

    public final int getCount()
    {
        return j.a(a).size();
    }

    public final Object getItem(int i)
    {
        return j.a(a).get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        o o1;
        Customer customer;
        String s;
        if (view == null)
        {
            view = j.g(a).inflate(0x7f030079, null);
            o1 = new o(this, (byte)0);
            o1.a = (TextView)view.findViewById(0x7f090053);
            o1.b = (TextView)view.findViewById(0x7f090181);
            o1.c = (TextView)view.findViewById(0x7f090051);
            o1.d = (LinearLayout)view.findViewById(0x7f090180);
            view.setTag(o1);
        } else
        {
            o1 = (o)view.getTag();
        }
        if (j.h(a) == i)
        {
            o1.d.setBackgroundResource(0x7f07007d);
        } else
        {
            o1.d.setBackgroundResource(0x7f07003b);
        }
        customer = (Customer)getItem(i);
        o1.a.setText(customer.getName());
        s = customer.getAddress1();
        if (customer.getAddress2() != null && !customer.getAddress2().equals(""))
        {
            s = (new StringBuilder()).append(s).append(" ").append(customer.getAddress2()).toString();
        }
        o1.b.setText(s);
        o1.c.setText(customer.getTel());
        return view;
    }
}
