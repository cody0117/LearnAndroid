// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.aadhk.restpos.bean.Item;
import com.aadhk.restpos.f.j;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.a:
//            aa, ax

public final class aw extends aa
{

    private List h;

    public aw(Context context, List list)
    {
        super(context);
        h = list;
    }

    public final int getCount()
    {
        return h.size();
    }

    public final Object getItem(int i)
    {
        return h.get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        ax ax1;
        Item item;
        if (view == null)
        {
            view = b.inflate(0x7f0300aa, null);
            ax1 = new ax(this, (byte)0);
            ax1.a = (TextView)view.findViewById(0x7f0b012c);
            ax1.b = (TextView)view.findViewById(0x7f0b00d3);
            ax1.c = (ImageView)view.findViewById(0x7f0b0243);
            view.setTag(ax1);
        } else
        {
            ax1 = (ax)view.getTag();
        }
        item = (Item)getItem(i);
        ax1.a.setText(item.getName());
        ax1.b.setText(j.a(g, item.getPrice(), d));
        if (item.isPicked())
        {
            ax1.c.setVisibility(0);
            return view;
        } else
        {
            ax1.c.setVisibility(8);
            return view;
        }
    }
}
