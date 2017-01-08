// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.aadhk.restpos.bean.ModifierGroup;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            aq, as

final class ar extends BaseAdapter
{

    final aq a;

    private ar(aq aq1)
    {
        a = aq1;
        super();
    }

    ar(aq aq1, byte byte0)
    {
        this(aq1);
    }

    public final int getCount()
    {
        return aq.a(a).size();
    }

    public final Object getItem(int i)
    {
        return aq.a(a).get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        as as1;
        ModifierGroup modifiergroup;
        if (view == null)
        {
            view = aq.e(a).inflate(0x7f030060, null);
            as1 = new as(this, (byte)0);
            as1.a = (TextView)view.findViewById(0x7f0b011f);
            as1.b = (ImageView)view.findViewById(0x7f0b012d);
            view.setTag(as1);
        } else
        {
            as1 = (as)view.getTag();
        }
        modifiergroup = (ModifierGroup)getItem(i);
        as1.a.setText(modifiergroup.getName());
        if (aq.b(a).contains(modifiergroup))
        {
            as1.b.setVisibility(0);
        }
        return view;
    }
}
