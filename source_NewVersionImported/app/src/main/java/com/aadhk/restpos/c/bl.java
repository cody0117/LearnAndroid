// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.aadhk.restpos.a.aa;
import com.aadhk.restpos.bean.ReportItem;
import com.aadhk.restpos.f.j;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.c:
//            bm, bk

final class bl extends aa
{

    final bk h;
    private List i;

    public bl(bk bk1, Context context, List list)
    {
        h = bk1;
        super(context);
        i = list;
    }

    public final int getCount()
    {
        return i.size();
    }

    public final Object getItem(int k)
    {
        return i.get(k);
    }

    public final long getItemId(int k)
    {
        return (long)k;
    }

    public final View getView(int k, View view, ViewGroup viewgroup)
    {
        bm bm1;
        ReportItem reportitem;
        if (view == null)
        {
            view = b.inflate(0x7f0300b5, null);
            bm1 = new bm(this, (byte)0);
            bm1.a = (TextView)view.findViewById(0x7f0b011f);
            bm1.b = (TextView)view.findViewById(0x7f0b0273);
            bm1.c = (TextView)view.findViewById(0x7f0b0274);
            view.setTag(bm1);
        } else
        {
            bm1 = (bm)view.getTag();
        }
        reportitem = (ReportItem)getItem(k);
        bm1.a.setText(reportitem.getName());
        if (bk.a(h) == 5)
        {
            bm1.b.setText(j.a(g, reportitem.getAmount(), d));
            bm1.c.setText((new StringBuilder()).append(reportitem.getPercentage()).append("%").toString());
            return view;
        } else
        {
            bm1.b.setText((new StringBuilder()).append(reportitem.getCount()).toString());
            bm1.c.setText((new StringBuilder()).append(reportitem.getPercentage()).append("%").toString());
            return view;
        }
    }
}
