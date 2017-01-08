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
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Item;
import com.aadhk.restpos.d.cr;
import com.aadhk.restpos.util.p;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.a:
//            aq

public final class ap extends a
{

    private List e;
    private String f;
    private int g;
    private cr h;

    public ap(Context context, cr cr1, List list)
    {
        super(context);
        e = list;
        h = cr1;
        Company company = ((POSApp)context.getApplicationContext()).b();
        f = company.getCurrencySign();
        g = company.getDecimalPlace();
    }

    public final void a(int i, int j)
    {
        Item item = (Item)e.get(i);
        e.remove(i);
        e.add(j, item);
        notifyDataSetChanged();
    }

    public final void b()
    {
        int i = e.size();
        HashMap hashmap = new HashMap();
        for (int j = 0; j < e.size(); j++)
        {
            hashmap.put((new StringBuilder()).append(((Item)e.get(j)).getId()).toString(), Integer.valueOf(i - j));
            ((Item)e.get(j)).setSequence(i - j);
        }

        h.a(hashmap);
    }

    public final int getCount()
    {
        return e.size();
    }

    public final Object getItem(int i)
    {
        return e.get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        aq aq1;
        Item item;
        if (view == null)
        {
            view = b.inflate(0x7f0300bf, null);
            aq1 = new aq(this, (byte)0);
            aq1.a = (TextView)view.findViewById(0x7f090171);
            aq1.b = (TextView)view.findViewById(0x7f0900f3);
            aq1.c = (ImageView)view.findViewById(0x7f0902b4);
            view.setTag(aq1);
        } else
        {
            aq1 = (aq)view.getTag();
        }
        item = (Item)getItem(i);
        aq1.a.setText(item.getName());
        aq1.b.setText(p.a(g, item.getPrice(), f));
        if (d >= 0 && d == i)
        {
            aq1.a.setVisibility(4);
            aq1.c.setVisibility(4);
            view.setBackgroundColor(c.getColor(0x7f07007f));
            return view;
        } else
        {
            aq1.a.setVisibility(0);
            aq1.c.setVisibility(0);
            view.setBackgroundColor(c.getColor(0x7f07003b));
            return view;
        }
    }
}
