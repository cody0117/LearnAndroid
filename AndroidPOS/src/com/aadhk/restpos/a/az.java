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
//            ba

public final class az extends BaseAdapter
{

    private List a;
    private LayoutInflater b;

    public az(Context context, List list)
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
        ba ba1;
        if (view == null)
        {
            view = b.inflate(0x7f0300c4, null);
            ba ba2 = new ba(this, (byte)0);
            ba2.a = (TextView)view.findViewById(0x7f0902b6);
            view.setTag(ba2);
            ba1 = ba2;
        } else
        {
            ba1 = (ba)view.getTag();
        }
        ba1.a.setText(item.getName());
        return view;
    }
}
