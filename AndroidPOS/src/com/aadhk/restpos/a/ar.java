// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.aadhk.product.a.a;
import com.aadhk.restpos.MgrTableActivity;
import com.aadhk.restpos.bean.Table;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.a:
//            as

public final class ar extends a
{

    private List e;
    private MgrTableActivity f;

    public ar(MgrTableActivity mgrtableactivity, List list)
    {
        super(mgrtableactivity);
        f = mgrtableactivity;
        e = list;
    }

    public final void a(int i, int j)
    {
        Table table = (Table)e.get(i);
        e.remove(i);
        e.add(j, table);
        notifyDataSetChanged();
    }

    public final void b()
    {
        int i = e.size();
        HashMap hashmap = new HashMap();
        for (int j = 0; j < e.size(); j++)
        {
            hashmap.put((new StringBuilder()).append(((Table)e.get(j)).getId()).toString(), Integer.valueOf(i - j));
            ((Table)e.get(j)).setSequence(i - j);
        }

        f.a(hashmap);
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
        as as1;
        Table table;
        if (view == null)
        {
            view = b.inflate(0x7f0300c2, null);
            as1 = new as(this, (byte)0);
            as1.a = (TextView)view.findViewById(0x7f090099);
            as1.b = (ImageView)view.findViewById(0x7f0902b4);
            view.setTag(as1);
        } else
        {
            as1 = (as)view.getTag();
        }
        table = (Table)getItem(i);
        as1.a.setText(table.getName());
        if (d >= 0 && d == i)
        {
            as1.a.setVisibility(4);
            as1.b.setVisibility(4);
            view.setBackgroundColor(c.getColor(0x7f07007f));
            return view;
        } else
        {
            as1.a.setVisibility(0);
            as1.b.setVisibility(0);
            view.setBackgroundColor(c.getColor(0x7f07003b));
            return view;
        }
    }
}
