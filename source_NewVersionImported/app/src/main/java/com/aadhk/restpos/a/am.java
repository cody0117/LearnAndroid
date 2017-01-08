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
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.v;
import com.aadhk.restpos.bean.Table;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.a:
//            an

public final class am extends a
{

    private List e;

    public am(Context context, List list)
    {
        super(context);
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
        for (int j = 0; j < e.size(); j++)
        {
            ((Table)e.get(j)).setSequence(i - j);
        }

        (new v(f.a().b())).b(e);
        f.a().c();
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
        an an1;
        Table table;
        if (view == null)
        {
            view = b.inflate(0x7f0300a4, null);
            an1 = new an(this, (byte)0);
            an1.a = (TextView)view.findViewById(0x7f0b011f);
            an1.b = (ImageView)view.findViewById(0x7f0b0240);
            view.setTag(an1);
        } else
        {
            an1 = (an)view.getTag();
        }
        table = (Table)getItem(i);
        an1.a.setText(table.getName());
        if (d >= 0 && d == i)
        {
            an1.a.setVisibility(4);
            an1.b.setVisibility(4);
            view.setBackgroundColor(c.getColor(0x7f080068));
            return view;
        } else
        {
            an1.a.setVisibility(0);
            an1.b.setVisibility(0);
            view.setBackgroundColor(c.getColor(0x7f080039));
            return view;
        }
    }
}
