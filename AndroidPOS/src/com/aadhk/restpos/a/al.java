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
import com.aadhk.restpos.MgrCategoryActivity;
import com.aadhk.restpos.bean.Category;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.a:
//            am, ao

public final class al extends a
{

    private List e;
    private MgrCategoryActivity f;
    private android.view.View.OnLongClickListener g;

    public al(MgrCategoryActivity mgrcategoryactivity, List list)
    {
        super(mgrcategoryactivity);
        g = new am(this);
        f = mgrcategoryactivity;
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
        HashMap hashmap = new HashMap();
        for (int j = 0; j < e.size(); j++)
        {
            hashmap.put((new StringBuilder()).append(((Category)e.get(j)).getId()).toString(), Integer.valueOf(i - j));
            ((Category)e.get(j)).setSequence(i - j);
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
        ao ao1;
        Category category;
        if (view == null)
        {
            view = f.getLayoutInflater().inflate(0x7f0300c2, null);
            ao1 = new ao(this, (byte)0);
            ao1.a = (TextView)view.findViewById(0x7f090099);
            ao1.b = (ImageView)view.findViewById(0x7f0902b4);
            view.setTag(ao1);
        } else
        {
            ao1 = (ao)view.getTag();
        }
        category = (Category)getItem(i);
        ao1.a.setText(category.getName());
        if (d >= 0 && d == i)
        {
            ao1.a.setVisibility(4);
            ((ImageView)view.findViewById(0x7f0902b4)).setVisibility(4);
            view.setBackgroundColor(c.getColor(0x7f07007f));
            return view;
        } else
        {
            ao1.a.setVisibility(0);
            ((ImageView)view.findViewById(0x7f0902b4)).setVisibility(0);
            view.setBackgroundColor(c.getColor(0x7f07003b));
            return view;
        }
    }
}
