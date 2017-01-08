// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.bean.Category;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            al, ap

public final class ao extends BaseAdapter
{

    final al a;

    public ao(al al1)
    {
        a = al1;
        super();
    }

    public final int getCount()
    {
        return al.c().size();
    }

    public final Object getItem(int i)
    {
        return al.c().get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        Category category = (Category)al.c().get(i);
        ap ap1;
        if (view == null)
        {
            view = al.b().getLayoutInflater().inflate(0x7f0300c3, null);
            ap ap2 = new ap(this, (byte)0);
            ap2.a = (TextView)view.findViewById(0x7f0902b6);
            view.setTag(ap2);
            ap1 = ap2;
        } else
        {
            ap1 = (ap)view.getTag();
        }
        if (al.f(a) == i)
        {
            ap1.a.setBackgroundColor(al.b().getResources().getColor(0x7f07006b));
            ap1.a.setTextColor(al.b().getResources().getColor(0x7f07007f));
        } else
        {
            ap1.a.setBackgroundColor(0);
            ap1.a.setTextColor(al.b().getResources().getColor(0x7f07006c));
        }
        ap1.a.setText(category.getName());
        return view;
    }
}
