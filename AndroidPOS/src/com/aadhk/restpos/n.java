// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.aadhk.restpos.bean.Discount;
import com.aadhk.restpos.util.p;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            DiscountActivity, o

final class n extends BaseAdapter
{

    final DiscountActivity a;
    private List b;

    public n(DiscountActivity discountactivity, List list)
    {
        a = discountactivity;
        super();
        b = list;
    }

    public final int getCount()
    {
        return b.size();
    }

    public final Object getItem(int i)
    {
        return b.get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        o o1;
        Discount discount;
        if (view == null)
        {
            view = a.getLayoutInflater().inflate(0x7f0300b4, null);
            o1 = new o(this, (byte)0);
            o1.a = (TextView)view.findViewById(0x7f090099);
            o1.b = (TextView)view.findViewById(0x7f0902ab);
            view.setTag(o1);
        } else
        {
            o1 = (o)view.getTag();
        }
        discount = (Discount)getItem(i);
        o1.a.setText(discount.getReason());
        if (discount.isPercentage())
        {
            o1.b.setText((new StringBuilder()).append(p.b(discount.getAmount())).append("%").toString());
            return view;
        } else
        {
            o1.b.setText(p.a(a.j, discount.getAmount(), a.i));
            return view;
        }
    }
}
