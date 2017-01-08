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
import com.aadhk.restpos.bean.SplitBill;
import com.aadhk.restpos.util.p;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            jh, jo, jn

final class jm extends BaseAdapter
{

    final jh a;
    private LayoutInflater b;

    public jm(jh jh1)
    {
        a = jh1;
        super();
        b = LayoutInflater.from(jh.a(jh1));
    }

    public final int getCount()
    {
        return jh.c(a).size();
    }

    public final Object getItem(int i)
    {
        return jh.c(a).get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        jo jo1;
        SplitBill splitbill;
        if (view == null)
        {
            view = b.inflate(0x7f0300a3, null);
            jo1 = new jo(this, (byte)0);
            jo1.a = (TextView)view.findViewById(0x7f09027b);
            jo1.b = (ImageView)view.findViewById(0x7f09027d);
            jo1.c = (ImageView)view.findViewById(0x7f09027c);
            view.setTag(jo1);
        } else
        {
            jo1 = (jo)view.getTag();
        }
        splitbill = (SplitBill)getItem(i);
        jo1.c.setOnClickListener(new jn(this, i, splitbill));
        jo1.a.setText(p.a(jh.i(a), splitbill.getAmount(), jh.j(a)));
        if (splitbill.isPaid())
        {
            jo1.b.setVisibility(0);
            jo1.c.setVisibility(8);
            return view;
        } else
        {
            jo1.b.setVisibility(8);
            jo1.c.setVisibility(0);
            return view;
        }
    }
}
