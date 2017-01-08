// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.aadhk.restpos.bean.KitchenNote;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            az, bg

final class bf extends BaseAdapter
{

    final az a;

    private bf(az az1)
    {
        a = az1;
        super();
    }

    bf(az az1, byte byte0)
    {
        this(az1);
    }

    public final int getCount()
    {
        return az.c(a).size();
    }

    public final Object getItem(int i)
    {
        return az.c(a).get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        bg bg1;
        KitchenNote kitchennote;
        if (view == null)
        {
            view = az.e(a).inflate(0x7f0300b6, null);
            bg1 = new bg(this, (byte)0);
            bg1.a = (TextView)view.findViewById(0x7f090099);
            view.setTag(bg1);
        } else
        {
            bg1 = (bg)view.getTag();
        }
        kitchennote = (KitchenNote)getItem(i);
        bg1.a.setText(kitchennote.getName());
        return view;
    }
}
