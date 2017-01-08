// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.aadhk.restpos.MgrItemActivity;
import com.aadhk.restpos.bean.ModifierGroup;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.c:
//            da, dc

final class db extends BaseAdapter
{

    final da a;

    private db(da da1)
    {
        a = da1;
        super();
    }

    db(da da1, byte byte0)
    {
        this(da1);
    }

    public final int getCount()
    {
        return da.a(a).size();
    }

    public final Object getItem(int i)
    {
        return da.a(a).get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        dc dc1;
        ModifierGroup modifiergroup;
        if (view == null)
        {
            view = da.b(a).getLayoutInflater().inflate(0x7f0300ad, null);
            dc1 = new dc(this, (byte)0);
            dc1.a = (TextView)view.findViewById(0x7f090099);
            dc1.b = (ImageView)view.findViewById(0x7f09002c);
            view.setTag(dc1);
        } else
        {
            dc1 = (dc)view.getTag();
        }
        modifiergroup = (ModifierGroup)getItem(i);
        dc1.a.setText(modifiergroup.getName());
        if (da.c(a).contains(modifiergroup))
        {
            dc1.b.setVisibility(0);
            return view;
        } else
        {
            dc1.b.setVisibility(8);
            return view;
        }
    }
}
