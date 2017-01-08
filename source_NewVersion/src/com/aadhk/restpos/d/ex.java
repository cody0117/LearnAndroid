// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.aadhk.restpos.a.aa;
import com.aadhk.restpos.bean.Report;
import com.aadhk.restpos.bean.ReportItem;
import com.aadhk.restpos.f.j;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            eu, ey

final class ex extends aa
{

    final eu h;

    public ex(eu eu1, Context context)
    {
        h = eu1;
        super(context);
    }

    public final int getCount()
    {
        return eu.c(h).getReportItems().size();
    }

    public final Object getItem(int i)
    {
        return eu.c(h).getReportItems().get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        ey ey1;
        ReportItem reportitem;
        if (view == null)
        {
            view = b.inflate(0x7f0300b7, null);
            ey1 = new ey(this, (byte)0);
            ey1.a = (TextView)view.findViewById(0x7f0b011f);
            ey1.b = (TextView)view.findViewById(0x7f0b0273);
            ey1.c = (TextView)view.findViewById(0x7f0b0274);
            view.setTag(ey1);
        } else
        {
            ey1 = (ey)view.getTag();
        }
        reportitem = (ReportItem)getItem(i);
        ey1.a.setText(reportitem.getName());
        ey1.b.setText((new StringBuilder()).append(reportitem.getCount()).toString());
        ey1.c.setText(j.a(g, reportitem.getAmount(), d));
        return view;
    }
}
