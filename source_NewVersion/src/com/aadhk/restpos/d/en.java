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
import com.aadhk.restpos.a.aa;
import com.aadhk.restpos.f.l;

// Referenced classes of package com.aadhk.restpos.d:
//            ek, ep, eo

public final class en extends aa
{

    final ek h;

    public en(ek ek1, Context context)
    {
        h = ek1;
        super(context);
    }

    public final int getCount()
    {
        return ek.a(h).length;
    }

    public final Object getItem(int i)
    {
        return ek.a(h)[i];
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        ep ep1;
        if (view == null)
        {
            view = b.inflate(0x7f0300b9, null);
            ep ep2 = new ep(this, (byte)0);
            ep2.a = (CheckBox)view.findViewById(0x7f0b011e);
            ep2.b = (TextView)view.findViewById(0x7f0b0277);
            view.setTag(ep2);
            ep1 = ep2;
        } else
        {
            ep1 = (ep)view.getTag();
        }
        if (ek.c(h).c(ek.b(h)[i]))
        {
            ep1.a.setChecked(true);
        }
        ep1.a.setOnClickListener(new eo(this, ep1, i));
        ep1.b.setText(ek.a(h)[i]);
        return view;
    }
}
