// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.aadhk.restpos.bean.PaymentMethod;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.a:
//            aa, av

public final class au extends aa
{

    private List h;
    private Context i;

    public au(Context context, List list)
    {
        super(context);
        i = context;
        h = list;
    }

    public final int getCount()
    {
        return h.size();
    }

    public final Object getItem(int j)
    {
        return h.get(j);
    }

    public final long getItemId(int j)
    {
        return (long)j;
    }

    public final View getView(int j, View view, ViewGroup viewgroup)
    {
        av av1;
        PaymentMethod paymentmethod;
        if (view == null)
        {
            view = b.inflate(0x7f030098, null);
            av1 = new av(this, (byte)0);
            av1.a = (TextView)view.findViewById(0x7f0b011f);
            view.setTag(av1);
        } else
        {
            av1 = (av)view.getTag();
        }
        paymentmethod = (PaymentMethod)getItem(j);
        av1.a.setText(paymentmethod.getName());
        return view;
    }
}
