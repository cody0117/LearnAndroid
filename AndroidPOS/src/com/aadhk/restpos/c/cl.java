// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.bean.ServiceFee;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.c:
//            ch, cm

final class cl extends BaseAdapter
{

    final ch a;

    private cl(ch ch1)
    {
        a = ch1;
        super();
    }

    cl(ch ch1, byte byte0)
    {
        this(ch1);
    }

    public final int getCount()
    {
        return com.aadhk.restpos.c.ch.h(a).size();
    }

    public final Object getItem(int i)
    {
        return com.aadhk.restpos.c.ch.h(a).get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        cm cm1;
        ServiceFee servicefee;
        if (view == null)
        {
            view = ch.i(a).inflate(0x7f0300ac, null);
            cm1 = new cm(this, (byte)0);
            cm1.a = (TextView)view.findViewById(0x7f090099);
            view.setTag(cm1);
        } else
        {
            cm1 = (cm)view.getTag();
        }
        servicefee = (ServiceFee)com.aadhk.restpos.c.ch.h(a).get(i);
        if (i == 0)
        {
            cm1.a.setText(ch.j(a).getString(0x7f0800f7));
            return view;
        }
        if (servicefee.isPercentage())
        {
            cm1.a.setText((new StringBuilder()).append(servicefee.getName()).append("(").append(h.b(servicefee.getAmount())).append("%)").toString());
            return view;
        } else
        {
            cm1.a.setText((new StringBuilder()).append(servicefee.getName()).append("(").append(servicefee.getAmount()).append(")").toString());
            return view;
        }
    }
}
