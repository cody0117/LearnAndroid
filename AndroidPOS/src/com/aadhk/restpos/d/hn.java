// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import com.aadhk.restpos.a.ag;
import com.aadhk.restpos.util.r;

// Referenced classes of package com.aadhk.restpos.d:
//            hk, hp, ho

public final class hn extends ag
{

    final hk h;

    public hn(hk hk1, Context context)
    {
        h = hk1;
        super(context);
    }

    public final int getCount()
    {
        return hk.a(h).length;
    }

    public final Object getItem(int i)
    {
        return hk.a(h)[i];
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        hp hp1;
        if (view == null)
        {
            view = b.inflate(0x7f0300d8, null);
            hp hp2 = new hp(this, (byte)0);
            hp2.a = (CheckBox)view.findViewById(0x7f090098);
            hp2.b = (TextView)view.findViewById(0x7f0902e9);
            view.setTag(hp2);
            hp1 = hp2;
        } else
        {
            hp1 = (hp)view.getTag();
        }
        if (hk.c(h).b(hk.b(h)[i]))
        {
            hp1.a.setChecked(true);
        } else
        {
            hp1.a.setChecked(false);
        }
        hp1.a.setOnClickListener(new ho(this, hp1, i));
        hp1.b.setText(hk.a(h)[i]);
        return view;
    }
}
