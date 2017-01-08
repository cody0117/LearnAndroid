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
//            dm, dp

final class do extends BaseAdapter
{

    final dm a;

    private do(dm dm1)
    {
        a = dm1;
        super();
    }

    do(dm dm1, byte byte0)
    {
        this(dm1);
    }

    public final int getCount()
    {
        return dm.d(a).size();
    }

    public final Object getItem(int i)
    {
        return dm.d(a).get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        dp dp1;
        ModifierGroup modifiergroup;
        if (view == null)
        {
            view = dm.e(a).inflate(0x7f030074, null);
            dp1 = new dp(this, (byte)0);
            dp1.a = (TextView)view.findViewById(0x7f090099);
            view.setTag(dp1);
        } else
        {
            dp1 = (dp)view.getTag();
        }
        modifiergroup = (ModifierGroup)getItem(i);
        dp1.a.setText(modifiergroup.getName());
        return view;
    }
}
