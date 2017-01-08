// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.aadhk.restpos.a.aa;
import com.aadhk.restpos.bean.ReportItem;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            ej, eh, ei, ef

final class eg extends aa
{

    final ef h;
    private List i;
    private String j;
    private String k;
    private String l;
    private String m;

    public eg(ef ef, Context context, List list, String s, String s1, String s2, String s3)
    {
        h = ef;
        super(context);
        i = list;
        j = s;
        k = s1;
        l = s2;
        m = s3;
    }

    static String a(eg eg1)
    {
        return eg1.j;
    }

    static String b(eg eg1)
    {
        return eg1.k;
    }

    static String c(eg eg1)
    {
        return eg1.l;
    }

    static String d(eg eg1)
    {
        return eg1.m;
    }

    public final int getCount()
    {
        return i.size();
    }

    public final Object getItem(int i1)
    {
        return i.get(i1);
    }

    public final long getItemId(int i1)
    {
        return (long)i1;
    }

    public final View getView(int i1, View view, ViewGroup viewgroup)
    {
        ej ej1;
        ReportItem reportitem;
        eh eh1;
        if (view == null)
        {
            view = b.inflate(0x7f0300b5, null);
            ej1 = new ej(this, (byte)0);
            ej1.a = (TextView)view.findViewById(0x7f0b011f);
            ej1.b = (TextView)view.findViewById(0x7f0b0273);
            ej1.c = (TextView)view.findViewById(0x7f0b0274);
            ej1.d = (LinearLayout)view.findViewById(0x7f0b0272);
            view.setTag(ej1);
        } else
        {
            ej1 = (ej)view.getTag();
        }
        reportitem = (ReportItem)getItem(i1);
        ej1.a.setText(reportitem.getName());
        ej1.b.setText((new StringBuilder()).append(reportitem.getCount()).toString());
        ej1.c.setText((new StringBuilder()).append(reportitem.getPercentage()).append("%").toString());
        eh1 = new eh(this, reportitem);
        ej1.d.setOnClickListener(new ei(this, eh1));
        return view;
    }
}
