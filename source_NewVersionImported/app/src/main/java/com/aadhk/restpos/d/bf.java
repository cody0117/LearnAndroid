// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.aadhk.restpos.bean.ModifierGroup;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            bd, bg

final class bf extends BaseAdapter
{

    final bd a;

    private bf(bd bd1)
    {
        a = bd1;
        super();
    }

    bf(bd bd1, byte byte0)
    {
        this(bd1);
    }

    public final int getCount()
    {
        return bd.a(a).size();
    }

    public final Object getItem(int i)
    {
        return bd.a(a).get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        bg bg1;
        ModifierGroup modifiergroup;
        if (view == null)
        {
            view = bd.c(a).inflate(0x7f03005f, null);
            bg1 = new bg(this, (byte)0);
            bg1.a = (TextView)view.findViewById(0x7f0b011f);
            view.setTag(bg1);
        } else
        {
            bg1 = (bg)view.getTag();
        }
        modifiergroup = (ModifierGroup)getItem(i);
        bg1.a.setText(modifiergroup.getName());
        return view;
    }
}
