// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.aadhk.product.library.bean.Currency;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.a:
//            d

public final class c extends BaseAdapter
{

    private final List a;
    private final Context b;
    private final LayoutInflater c;

    public c(Context context, List list)
    {
        b = context;
        a = list;
        c = LayoutInflater.from(context);
    }

    public final int getCount()
    {
        return a.size();
    }

    public final Object getItem(int i)
    {
        return a.get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        Currency currency = (Currency)getItem(i);
        d d1;
        if (view == null)
        {
            view = c.inflate(0x7f030027, null);
            d d2 = new d(this, (byte)0);
            d2.a = (TextView)view.findViewById(0x7f0b0081);
            d2.b = (TextView)view.findViewById(0x7f0b0080);
            d2.c = (TextView)view.findViewById(0x7f0b0082);
            d2.d = (ImageView)view.findViewById(0x7f0b0083);
            view.setTag(d2);
            d1 = d2;
        } else
        {
            d1 = (d)view.getTag();
        }
        d1.a.setText(currency.b());
        d1.b.setText(currency.a());
        d1.c.setText(currency.c());
        if (currency.d())
        {
            d1.d.setVisibility(0);
            return view;
        } else
        {
            d1.d.setVisibility(4);
            return view;
        }
    }
}
