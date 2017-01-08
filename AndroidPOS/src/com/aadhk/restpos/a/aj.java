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
//            ag, ak

public final class aj extends ag
{

    private List h;

    public aj(Context context, List list)
    {
        super(context);
        h = list;
    }

    public final void a(List list)
    {
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
        ak ak1;
        Table table;
        if (view == null)
        {
            view = b.inflate(0x7f030081, null);
            ak1 = new ak(this, (byte)0);
            ak1.a = (TextView)view.findViewById(0x7f090171);
            ak1.b = (TextView)view.findViewById(0x7f090190);
            view.setTag(ak1);
        } else
        {
            ak1 = (ak)view.getTag();
        }
        table = (Table)h.get(i);
        ak1.a.setText(table.getName());
        if (table.isOpen())
        {
            if (table.isReceipt())
            {
                ak1.a.setBackgroundResource(0x7f0200cf);
                ak1.b.setVisibility(0);
                ak1.b.setText(0x7f080323);
                return view;
            }
            if (table.isItemWait())
            {
                ak1.a.setBackgroundResource(0x7f0200d1);
                ak1.b.setVisibility(0);
                ak1.b.setText(0x7f0802d2);
                return view;
            } else
            {
                ak1.b.setVisibility(8);
                ak1.a.setBackgroundResource(0x7f0200ce);
                return view;
            }
        } else
        {
            ak1.a.setBackgroundResource(0x7f020101);
            ak1.b.setVisibility(8);
            return view;
        }
    }
}
