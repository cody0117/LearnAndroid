// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.aadhk.restpos.bean.Table;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.c:
//            di, dk

final class dj extends BaseAdapter
{

    final di a;

    private dj(di di1)
    {
        a = di1;
        super();
    }

    dj(di di1, byte byte0)
    {
        this(di1);
    }

    public final int getCount()
    {
        return di.a(a).size();
    }

    public final Object getItem(int i)
    {
        return di.a(a).get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        dk dk1;
        if (view == null)
        {
            view = di.b(a).inflate(0x7f0300ac, null);
            view.setLayoutParams(new android.widget.AbsListView.LayoutParams(-1, 80));
            dk dk2 = new dk(this, (byte)0);
            dk2.a = (TextView)view.findViewById(0x7f090099);
            view.setTag(dk2);
            dk1 = dk2;
        } else
        {
            dk1 = (dk)view.getTag();
        }
        dk1.a.setText(((Table)di.a(a).get(i)).getName());
        return view;
    }
}
