// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.aadhk.restpos.bean.Item;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.a:
//            be

public final class bd extends BaseAdapter
{

    private Context a;
    private LayoutInflater b;
    private List c;

    public bd(Context context, List list)
    {
        b = LayoutInflater.from(context);
        a = context;
        c = list;
    }

    public final int getCount()
    {
        return c.size();
    }

    public final Object getItem(int i)
    {
        return c.get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        be be1;
        if (view == null)
        {
            view = b.inflate(0x7f030098, null);
            be be2 = new be(this, (byte)0);
            be2.a = (TextView)view.findViewById(0x7f0b011f);
            view.setTag(be2);
            be1 = be2;
        } else
        {
            be1 = (be)view.getTag();
        }
        be1.a.setTextColor(a.getResources().getColor(0x7f080039));
        be1.a.setText(((Item)c.get(i)).getName());
        return view;
    }
}
