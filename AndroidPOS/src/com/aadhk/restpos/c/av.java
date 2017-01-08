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
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.ServiceFee;
import com.aadhk.restpos.util.p;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.c:
//            at, aw

final class av extends BaseAdapter
{

    final at a;

    private av(at at1)
    {
        a = at1;
        super();
    }

    av(at at1, byte byte0)
    {
        this(at1);
    }

    public final int getCount()
    {
        return at.a(a).size();
    }

    public final Object getItem(int i)
    {
        return at.a(a).get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        aw aw1;
        ServiceFee servicefee;
        if (view == null)
        {
            view = at.b(a).inflate(0x7f0300de, null);
            aw1 = new aw(this, (byte)0);
            aw1.a = (TextView)view.findViewById(0x7f090047);
            view.setTag(aw1);
        } else
        {
            aw1 = (aw)view.getTag();
        }
        servicefee = (ServiceFee)at.a(a).get(i);
        if (servicefee.getId() == -1)
        {
            aw1.a.setText(servicefee.getName());
            return view;
        }
        if (servicefee.isPercentage())
        {
            aw1.a.setText((new StringBuilder()).append(servicefee.getName()).append("(").append(h.b(servicefee.getAmount())).append("%)").toString());
            return view;
        } else
        {
            aw1.a.setText((new StringBuilder()).append(servicefee.getName()).append("(").append(p.a(at.c(a).getDecimalPlace(), servicefee.getAmount(), at.c(a).getCurrencySign())).append(")").toString());
            return view;
        }
    }
}
