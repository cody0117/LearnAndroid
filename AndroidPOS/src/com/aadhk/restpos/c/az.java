// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.c:
//            ay, ba

final class az extends BaseAdapter
{

    final ay a;
    private LayoutInflater b;

    public az(ay ay1, Context context)
    {
        a = ay1;
        super();
        b = LayoutInflater.from(context);
    }

    public final int getCount()
    {
        return ay.a(a).size();
    }

    public final Object getItem(int i)
    {
        return ay.a(a).get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        ba ba1;
        if (view == null)
        {
            view = b.inflate(0x7f0300ac, null);
            ba ba2 = new ba(this, (byte)0);
            ba2.a = (TextView)view.findViewById(0x7f090099);
            view.setTag(ba2);
            ba1 = ba2;
        } else
        {
            ba1 = (ba)view.getTag();
        }
        ba1.a.setText((CharSequence)ay.a(a).get(i));
        return view;
    }
}
