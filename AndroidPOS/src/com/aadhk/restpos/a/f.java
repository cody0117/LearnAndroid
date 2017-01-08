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
import com.aadhk.restpos.bean.Currency;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.a:
//            g

public final class f extends BaseAdapter
{

    private final List a;
    private final Context b;
    private final LayoutInflater c;

    public f(Context context, List list)
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
        g g1;
        if (view == null)
        {
            view = c.inflate(0x7f030030, null);
            g g2 = new g(this, (byte)0);
            g2.a = (TextView)view.findViewById(0x7f09009f);
            g2.b = (TextView)view.findViewById(0x7f09009e);
            g2.c = (TextView)view.findViewById(0x7f0900a0);
            g2.d = (ImageView)view.findViewById(0x7f0900a1);
            view.setTag(g2);
            g1 = g2;
        } else
        {
            g1 = (g)view.getTag();
        }
        g1.a.setText(currency.getSign());
        g1.b.setText(currency.getCode());
        g1.c.setText(currency.getDesc());
        if (currency.isUse())
        {
            g1.d.setVisibility(0);
            return view;
        } else
        {
            g1.d.setVisibility(4);
            return view;
        }
    }
}
