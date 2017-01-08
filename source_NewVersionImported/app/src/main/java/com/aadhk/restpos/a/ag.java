// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.aadhk.restpos.bean.Table;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.a:
//            aa, ah

public final class ag extends aa
{

    private List h;

    public ag(Context context, List list)
    {
        super(context);
        h = list;
    }

    public final int getCount()
    {
        return h.size();
    }

    public final Object getItem(int i)
    {
        return h.get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        ah ah1;
        Table table;
        if (view == null)
        {
            view = b.inflate(0x7f03006b, null);
            ah1 = new ah(this, (byte)0);
            ah1.a = (TextView)view.findViewById(0x7f0b012c);
            ah1.b = (TextView)view.findViewById(0x7f0b0147);
            view.setTag(ah1);
        } else
        {
            ah1 = (ah)view.getTag();
        }
        table = (Table)h.get(i);
        ah1.a.setText(table.getName());
        if (table.isOpen())
        {
            if (table.isReceipt())
            {
                ah1.a.setBackgroundResource(0x7f0200bd);
                ah1.b.setVisibility(0);
                ah1.b.setText(0x7f0902c5);
                return view;
            }
            if (table.isItemWait())
            {
                ah1.a.setBackgroundResource(0x7f0200bf);
                ah1.b.setVisibility(0);
                ah1.b.setText(0x7f090274);
                return view;
            } else
            {
                ah1.b.setVisibility(8);
                ah1.a.setBackgroundResource(0x7f0200bc);
                return view;
            }
        } else
        {
            ah1.a.setBackgroundResource(0x7f0200bb);
            ah1.b.setVisibility(8);
            return view;
        }
    }
}
