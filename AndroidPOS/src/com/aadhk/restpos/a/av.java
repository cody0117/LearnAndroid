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
import com.aadhk.restpos.bean.TableGroup;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.a:
//            aw

public final class av extends BaseAdapter
{

    private List a;
    private Context b;
    private LayoutInflater c;

    public av(Context context, List list)
    {
        b = context;
        a = list;
        c = LayoutInflater.from(context);
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
        aw aw1;
        TableGroup tablegroup;
        if (view == null)
        {
            view = c.inflate(0x7f0300b6, null);
            aw1 = new aw(this, (byte)0);
            aw1.a = (TextView)view.findViewById(0x7f090099);
            view.setTag(aw1);
        } else
        {
            aw1 = (aw)view.getTag();
        }
        tablegroup = (TableGroup)getItem(i);
        aw1.a.setText(tablegroup.getName());
        return view;
    }
}
