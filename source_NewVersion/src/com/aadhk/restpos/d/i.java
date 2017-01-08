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
//            e, j

final class i extends BaseAdapter
{

    final e a;

    private i(e e1)
    {
        a = e1;
        super();
    }

    i(e e1, byte byte0)
    {
        this(e1);
    }

    public final int getCount()
    {
        return e.a(a).size();
    }

    public final Object getItem(int k)
    {
        return e.a(a).get(k);
    }

    public final long getItemId(int k)
    {
        return (long)k;
    }

    public final View getView(int k, View view, ViewGroup viewgroup)
    {
        j j1;
        Customer customer;
        String s;
        if (view == null)
        {
            view = e.f(a).inflate(0x7f030064, null);
            j1 = new j(this, (byte)0);
            j1.a = (TextView)view.findViewById(0x7f0b004f);
            j1.b = (TextView)view.findViewById(0x7f0b013c);
            j1.c = (TextView)view.findViewById(0x7f0b004d);
            j1.d = (LinearLayout)view.findViewById(0x7f0b013b);
            view.setTag(j1);
        } else
        {
            j1 = (j)view.getTag();
        }
        if (e.g(a) == k)
        {
            j1.d.setBackgroundResource(0x7f080067);
        } else
        {
            j1.d.setBackgroundResource(0x7f080039);
        }
        customer = (Customer)getItem(k);
        j1.a.setText(customer.getName());
        s = customer.getAddress1();
        if (customer.getAddress2() != null && !customer.getAddress2().equals(""))
        {
            s = (new StringBuilder()).append(s).append(" ").append(customer.getAddress2()).toString();
        }
        j1.b.setText(s);
        j1.c.setText(customer.getTel());
        return view;
    }
}
