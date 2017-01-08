// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

// Referenced classes of package com.aadhk.restpos.a:
//            bo

public final class bn extends ArrayAdapter
{

    private final Context a;
    private final String b[];
    private final LayoutInflater c;

    public bn(Context context, String as[])
    {
        super(context, 0x7f090047, as);
        a = context;
        b = as;
        c = LayoutInflater.from(context);
    }

    public final int getCount()
    {
        return b.length;
    }

    public final View getDropDownView(int i, View view, ViewGroup viewgroup)
    {
        bo bo2;
        if (view == null)
        {
            bo bo1 = new bo(this);
            view = c.inflate(0x7f0300de, null);
            bo.a(bo1, (TextView)view.findViewById(0x7f090047));
            view.setTag(bo1);
            bo2 = bo1;
        } else
        {
            bo2 = (bo)view.getTag();
        }
        bo.a(bo2).setText(b[i]);
        return view;
    }

    public final Object getItem(int i)
    {
        return null;
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        bo bo1 = new bo(this);
        View view1 = c.inflate(0x7f0300de, null);
        bo.a(bo1, (TextView)view1.findViewById(0x7f090047));
        view1.setTag(bo1);
        bo.a(bo1).setText(b[i]);
        return view1;
    }
}
