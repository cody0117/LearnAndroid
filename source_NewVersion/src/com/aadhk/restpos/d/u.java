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
//            q, v

public final class u extends BaseAdapter
{

    final q a;

    public u(q q1)
    {
        a = q1;
        super();
    }

    public final int getCount()
    {
        return q.b().size();
    }

    public final Object getItem(int i)
    {
        return q.b().get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        Category category = (Category)q.b().get(i);
        v v1;
        if (view == null)
        {
            view = q.a().getLayoutInflater().inflate(0x7f0300a5, null);
            v v2 = new v(this, (byte)0);
            v2.a = (TextView)view.findViewById(0x7f0b0242);
            view.setTag(v2);
            v1 = v2;
        } else
        {
            v1 = (v)view.getTag();
        }
        if (q.g(a) == i)
        {
            v1.a.setBackgroundColor(q.a().getResources().getColor(0x7f080054));
            v1.a.setTextColor(q.a().getResources().getColor(0x7f080068));
        } else
        {
            v1.a.setBackgroundColor(0);
            v1.a.setTextColor(q.a().getResources().getColor(0x7f080055));
        }
        v1.a.setText(category.getName());
        return view;
    }
}
