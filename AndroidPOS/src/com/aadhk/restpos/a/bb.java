// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.aadhk.restpos.bean.PaymentMethod;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.a:
//            ag, bc

public final class bb extends ag
{

    private List h;
    private Context i;

    public bb(Context context, List list)
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
        bc bc1;
        PaymentMethod paymentmethod;
        if (view == null)
        {
            view = b.inflate(0x7f0300b5, null);
            bc1 = new bc(this, (byte)0);
            bc1.a = (TextView)view.findViewById(0x7f090099);
            bc1.b = (ImageView)view.findViewById(0x7f09002c);
            view.setTag(bc1);
        } else
        {
            bc1 = (bc)view.getTag();
        }
        paymentmethod = (PaymentMethod)getItem(j);
        bc1.a.setText(paymentmethod.getName());
        if (paymentmethod.isBeDefault())
        {
            bc1.b.setVisibility(0);
            return view;
        } else
        {
            bc1.b.setVisibility(8);
            return view;
        }
    }
}
