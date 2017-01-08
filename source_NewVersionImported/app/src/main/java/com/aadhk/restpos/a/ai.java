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
import com.aadhk.restpos.b.b;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.Category;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.a:
//            aj

public final class ai extends a
{

    private List e;
    private Context f;

    public ai(Context context, List list)
    {
        super(context);
        f = context;
        e = list;
    }

    public final void a(int i, int j)
    {
        Category category = (Category)e.get(i);
        e.remove(i);
        e.add(j, category);
        notifyDataSetChanged();
    }

    public final void b()
    {
        int i = e.size();
        for (int j = 0; j < e.size(); j++)
        {
            ((Category)e.get(j)).setSequence(i - j);
        }

        (new b(com.aadhk.restpos.b.f.a().b())).b(e);
        com.aadhk.restpos.b.f.a().c();
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
        aj aj1;
        Category category;
        if (view == null)
        {
            view = b.inflate(0x7f0300a4, null);
            aj1 = new aj(this, (byte)0);
            aj1.a = (TextView)view.findViewById(0x7f0b011f);
            aj1.b = (ImageView)view.findViewById(0x7f0b0240);
            view.setTag(aj1);
        } else
        {
            aj1 = (aj)view.getTag();
        }
        category = (Category)getItem(i);
        aj1.a.setText(category.getName());
        if (d >= 0 && d == i)
        {
            aj1.a.setVisibility(4);
            ((ImageView)view.findViewById(0x7f0b0240)).setVisibility(4);
            view.setBackgroundColor(c.getColor(0x7f080068));
            return view;
        } else
        {
            aj1.a.setVisibility(0);
            ((ImageView)view.findViewById(0x7f0b0240)).setVisibility(0);
            view.setBackgroundColor(c.getColor(0x7f080039));
            return view;
        }
    }
}
