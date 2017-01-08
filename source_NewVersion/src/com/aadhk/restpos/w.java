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
import com.aadhk.restpos.f.j;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            DiscountActivity, x

final class w extends BaseAdapter
{

    final DiscountActivity a;
    private List b;

    public w(DiscountActivity discountactivity, List list)
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
        x x1;
        Discount discount;
        if (view == null)
        {
            view = a.getLayoutInflater().inflate(0x7f030097, null);
            x1 = new x(this, (byte)0);
            x1.a = (TextView)view.findViewById(0x7f0b011f);
            x1.b = (TextView)view.findViewById(0x7f0b0237);
            view.setTag(x1);
        } else
        {
            x1 = (x)view.getTag();
        }
        discount = (Discount)getItem(i);
        x1.a.setText(discount.getReason());
        if (discount.isPer())
        {
            x1.b.setText((new StringBuilder()).append(j.b(discount.getAmount())).append("%").toString());
            return view;
        } else
        {
            x1.b.setText(j.a(a.j, discount.getAmount(), a.i));
            return view;
        }
    }
}
