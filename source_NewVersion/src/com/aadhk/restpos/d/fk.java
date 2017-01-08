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
import com.aadhk.restpos.f.j;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            ff, fm, fl

final class fk extends BaseAdapter
{

    final ff a;
    private LayoutInflater b;

    public fk(ff ff1)
    {
        a = ff1;
        super();
        b = LayoutInflater.from(ff.h(ff1));
    }

    public final int getCount()
    {
        return ff.b(a).size();
    }

    public final Object getItem(int i)
    {
        return ff.b(a).get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        fm fm1;
        SplitBill splitbill;
        if (view == null)
        {
            view = b.inflate(0x7f030086, null);
            fm1 = new fm(this, (byte)0);
            fm1.a = (TextView)view.findViewById(0x7f0b0215);
            fm1.b = (ImageView)view.findViewById(0x7f0b0216);
            fm1.c = (ImageView)view.findViewById(0x7f0b0115);
            view.setTag(fm1);
        } else
        {
            fm1 = (fm)view.getTag();
        }
        splitbill = (SplitBill)getItem(i);
        fm1.c.setOnClickListener(new fl(this, i, splitbill));
        fm1.a.setText(j.a(ff.f(a), splitbill.getAmount(), com.aadhk.restpos.d.ff.j(a)));
        if (splitbill.isPaid())
        {
            fm1.b.setVisibility(0);
            fm1.c.setVisibility(8);
            return view;
        } else
        {
            fm1.b.setVisibility(8);
            fm1.c.setVisibility(0);
            return view;
        }
    }
}
