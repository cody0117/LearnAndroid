// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.PaymentActivity;
import com.aadhk.restpos.bean.Discount;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.c:
//            bw, cb

final class ca extends BaseAdapter
{

    final bw a;

    private ca(bw bw1)
    {
        a = bw1;
        super();
    }

    ca(bw bw1, byte byte0)
    {
        this(bw1);
    }

    public final int getCount()
    {
        return com.aadhk.restpos.c.bw.h(a).size();
    }

    public final Object getItem(int i)
    {
        return Double.valueOf(((Discount)com.aadhk.restpos.c.bw.h(a).get(i)).getAmount());
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        cb cb1;
        Discount discount;
        if (view == null)
        {
            view = bw.i(a).getLayoutInflater().inflate(0x7f0300ac, null);
            cb cb2 = new cb(this, (byte)0);
            cb2.a = (TextView)view.findViewById(0x7f090099);
            view.setTag(cb2);
            cb1 = cb2;
        } else
        {
            cb1 = (cb)view.getTag();
        }
        discount = (Discount)com.aadhk.restpos.c.bw.h(a).get(i);
        if (i == 0)
        {
            cb1.a.setText(bw.i(a).getString(0x7f08037c));
            return view;
        }
        if (((Discount)com.aadhk.restpos.c.bw.h(a).get(i)).isPercentage())
        {
            cb1.a.setText((new StringBuilder()).append(discount.getReason()).append("(").append(h.b(discount.getAmount())).append("%)").toString());
            return view;
        } else
        {
            cb1.a.setText((new StringBuilder()).append(discount.getReason()).append("(").append(discount.getAmount()).append(")").toString());
            return view;
        }
    }
}
