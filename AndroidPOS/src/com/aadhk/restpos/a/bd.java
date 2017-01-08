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
import com.aadhk.restpos.util.p;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.a:
//            ag, be

public final class bd extends ag
{

    private List h;

    public bd(Context context, List list)
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
        be be1;
        Item item;
        if (view == null)
        {
            view = b.inflate(0x7f0300c8, null);
            be1 = new be(this, (byte)0);
            be1.a = (TextView)view.findViewById(0x7f090171);
            be1.b = (TextView)view.findViewById(0x7f0900f3);
            be1.c = (ImageView)view.findViewById(0x7f0902b7);
            view.setTag(be1);
        } else
        {
            be1 = (be)view.getTag();
        }
        item = (Item)getItem(i);
        be1.a.setText(item.getName());
        be1.b.setText(p.a(g, item.getPrice(), d));
        if (item.isPicked())
        {
            be1.c.setVisibility(0);
            return view;
        } else
        {
            be1.c.setVisibility(8);
            return view;
        }
    }
}
