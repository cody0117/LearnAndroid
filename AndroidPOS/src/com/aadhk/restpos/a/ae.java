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
import com.aadhk.restpos.bean.KitchenNote;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.a:
//            af

public final class ae extends BaseAdapter
{

    private List a;
    private LayoutInflater b;

    public ae(Context context, List list)
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
        af af1;
        KitchenNote kitchennote;
        if (view == null)
        {
            view = b.inflate(0x7f0300b6, null);
            af1 = new af(this, (byte)0);
            af1.a = (TextView)view.findViewById(0x7f090099);
            view.setTag(af1);
        } else
        {
            af1 = (af)view.getTag();
        }
        kitchennote = (KitchenNote)getItem(i);
        af1.a.setText(kitchennote.getName());
        return view;
    }
}
