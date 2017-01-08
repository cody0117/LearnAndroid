// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.aadhk.restpos.bean.ServiceFee;
import com.aadhk.restpos.util.p;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            ServiceFeeActivity, dg

final class df extends BaseAdapter
{

    final ServiceFeeActivity a;
    private List b;

    public df(ServiceFeeActivity servicefeeactivity, List list)
    {
        a = servicefeeactivity;
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
        dg dg1;
        ServiceFee servicefee;
        if (view == null)
        {
            view = a.getLayoutInflater().inflate(0x7f0300b4, null);
            dg1 = new dg(this, (byte)0);
            dg1.a = (TextView)view.findViewById(0x7f090099);
            dg1.b = (TextView)view.findViewById(0x7f0902ab);
            view.setTag(dg1);
        } else
        {
            dg1 = (dg)view.getTag();
        }
        servicefee = (ServiceFee)getItem(i);
        dg1.a.setText(servicefee.getName());
        if (servicefee.isPercentage())
        {
            dg1.b.setText((new StringBuilder()).append(p.b(servicefee.getAmount())).append("%").toString());
            return view;
        } else
        {
            dg1.b.setText(p.a(a.j, servicefee.getAmount(), a.i));
            return view;
        }
    }
}
