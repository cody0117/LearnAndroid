// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.aadhk.restpos.bean.Item;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.a:
//            at

public final class as extends BaseAdapter
{

    private List a;
    private LayoutInflater b;

    public as(Context context, List list)
    {
        a = list;
        b = LayoutInflater.from(context);
    }

    public final int getCount()
    {
        return a.size();
    }

    public final Object getItem(int i)
    {
        return a.get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        Item item = (Item)a.get(i);
        at at1;
        if (view == null)
        {
            view = b.inflate(0x7f0300a6, null);
            at at2 = new at(this, (byte)0);
            at2.a = (TextView)view.findViewById(0x7f0b0242);
            view.setTag(at2);
            at1 = at2;
        } else
        {
            at1 = (at)view.getTag();
        }
        at1.a.setText(item.getName());
        return view;
    }
}
