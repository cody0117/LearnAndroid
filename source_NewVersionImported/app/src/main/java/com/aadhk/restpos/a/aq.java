// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.aadhk.restpos.bean.Order;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.a:
//            ar

public final class aq extends ArrayAdapter
{

    private final Context a;
    private final List b;
    private final LayoutInflater c;

    public aq(Context context, List list)
    {
        super(context, 0x7f0b0043, list);
        a = context;
        b = list;
        c = LayoutInflater.from(context);
    }

    public final int getCount()
    {
        return b.size();
    }

    public final View getDropDownView(int i, View view, ViewGroup viewgroup)
    {
        ar ar2;
        if (view == null)
        {
            ar ar1 = new ar(this);
            view = c.inflate(0x7f0300bd, null);
            ar.a(ar1, (TextView)view.findViewById(0x7f0b0043));
            view.setTag(ar1);
            ar2 = ar1;
        } else
        {
            ar2 = (ar)view.getTag();
        }
        ar.a(ar2).setText(((Order)b.get(i)).getTableName());
        return view;
    }

    public final Object getItem(int i)
    {
        return null;
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        ar ar1 = new ar(this);
        View view1 = c.inflate(0x7f0300bd, null);
        ar.a(ar1, (TextView)view1.findViewById(0x7f0b0043));
        view1.setTag(ar1);
        ar.a(ar1).setText(((Order)b.get(i)).getTableName());
        return view1;
    }
}
