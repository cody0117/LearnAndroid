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
//            au

public final class at extends BaseAdapter
{

    private List a;
    private Context b;
    private LayoutInflater c;

    public at(Context context, List list)
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
        au au1;
        TableGroup tablegroup;
        if (view == null)
        {
            view = c.inflate(0x7f0300df, null);
            au1 = new au(this, (byte)0);
            au1.a = (TextView)view.findViewById(0x7f090047);
            view.setTag(au1);
        } else
        {
            au1 = (au)view.getTag();
        }
        tablegroup = (TableGroup)getItem(i);
        au1.a.setText(tablegroup.getName());
        return view;
    }
}
