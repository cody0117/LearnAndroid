// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.TextView;
import com.aadhk.restpos.PriceScheduleActivity;

// Referenced classes of package com.aadhk.restpos.d:
//            fq, fx, fw

final class fv extends BaseAdapter
{

    final fq a;
    private String b[];

    public fv(fq fq1, String as[])
    {
        a = fq1;
        super();
        b = as;
    }

    public final int getCount()
    {
        return b.length;
    }

    public final Object getItem(int i)
    {
        return b[i];
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        fx fx1;
        if (view == null)
        {
            view = fq.a(a).getLayoutInflater().inflate(0x7f03002d, null);
            fx fx2 = new fx(this);
            fx2.a = (TextView)view.findViewById(0x7f090099);
            fx2.b = (CheckBox)view.findViewById(0x7f090098);
            view.setTag(fx2);
            fx1 = fx2;
        } else
        {
            fx1 = (fx)view.getTag();
        }
        fx1.a.setText(b[i]);
        if (fq.b(a)[i].booleanValue())
        {
            fx1.b.setChecked(true);
        }
        fx1.b.setOnClickListener(new fw(this, i, fx1));
        return view;
    }
}
