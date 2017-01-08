// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.aadhk.product.a.a;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.i;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Item;
import com.aadhk.restpos.f.j;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.a:
//            al

public final class ak extends a
{

    private List e;
    private String f;
    private int g;

    public ak(Context context, List list)
    {
        super(context);
        e = list;
        Company company = ((POSApp)context.getApplicationContext()).b();
        f = company.getCurrencySign();
        g = company.getDecimalPlace();
    }

    public final void a(int k, int l)
    {
        Item item = (Item)e.get(k);
        e.remove(k);
        e.add(l, item);
        notifyDataSetChanged();
    }

    public final void b()
    {
        int k = e.size();
        for (int l = 0; l < e.size(); l++)
        {
            ((Item)e.get(l)).setSequence(k - l);
        }

        (new i(com.aadhk.restpos.b.f.a().b())).b(e);
        com.aadhk.restpos.b.f.a().c();
    }

    public final int getCount()
    {
        return e.size();
    }

    public final Object getItem(int k)
    {
        return e.get(k);
    }

    public final long getItemId(int k)
    {
        return (long)k;
    }

    public final View getView(int k, View view, ViewGroup viewgroup)
    {
        al al1;
        Item item;
        if (view == null)
        {
            view = b.inflate(0x7f0300a1, null);
            al1 = new al(this, (byte)0);
            al1.a = (TextView)view.findViewById(0x7f0b012c);
            al1.b = (TextView)view.findViewById(0x7f0b00d3);
            al1.c = (ImageView)view.findViewById(0x7f0b0240);
            view.setTag(al1);
        } else
        {
            al1 = (al)view.getTag();
        }
        item = (Item)getItem(k);
        al1.a.setText(item.getName());
        al1.b.setText(j.a(g, item.getPrice(), f));
        if (d >= 0 && d == k)
        {
            al1.a.setVisibility(4);
            al1.c.setVisibility(4);
            view.setBackgroundColor(c.getColor(0x7f080068));
            return view;
        } else
        {
            al1.a.setVisibility(0);
            al1.c.setVisibility(0);
            view.setBackgroundColor(c.getColor(0x7f080039));
            return view;
        }
    }
}
