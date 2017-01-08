// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.aadhk.restpos.bean.PriceSchedule;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            gb, gd

final class gc extends BaseAdapter
{

    final gb a;

    private gc(gb gb1)
    {
        a = gb1;
        super();
    }

    gc(gb gb1, byte byte0)
    {
        this(gb1);
    }

    public final int getCount()
    {
        return gb.d(a).size();
    }

    public final Object getItem(int i)
    {
        return gb.d(a).get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        gd gd1;
        PriceSchedule priceschedule;
        if (view == null)
        {
            view = gb.g(a).inflate(0x7f0300cf, null);
            gd1 = new gd(this, (byte)0);
            gd1.a = (TextView)view.findViewById(0x7f090099);
            gd1.b = (ImageView)view.findViewById(0x7f0902c8);
            gd1.c = (LinearLayout)view.findViewById(0x7f090180);
            view.setTag(gd1);
        } else
        {
            gd1 = (gd)view.getTag();
        }
        if (gb.h(a) == i)
        {
            gd1.c.setBackgroundResource(0x7f07007d);
        } else
        {
            gd1.c.setBackgroundResource(0x7f07003b);
        }
        priceschedule = (PriceSchedule)getItem(i);
        gd1.a.setText(priceschedule.getName());
        if (priceschedule.isEnable())
        {
            gd1.b.setBackgroundResource(0x7f0200b5);
            return view;
        } else
        {
            gd1.b.setBackgroundResource(0x7f0200ae);
            return view;
        }
    }
}
