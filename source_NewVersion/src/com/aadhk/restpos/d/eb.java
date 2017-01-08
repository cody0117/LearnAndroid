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
import com.aadhk.restpos.f.j;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            ee, ec, ed, ea

final class eb extends aa
{

    final ea h;
    private List i;
    private String j;
    private String k;
    private String l;
    private String m;

    public eb(ea ea, Context context, List list, String s, String s1, String s2, String s3)
    {
        h = ea;
        super(context);
        i = list;
        j = s;
        k = s1;
        l = s2;
        m = s3;
    }

    static String a(eb eb1)
    {
        return eb1.j;
    }

    static String b(eb eb1)
    {
        return eb1.k;
    }

    static String c(eb eb1)
    {
        return eb1.l;
    }

    static String d(eb eb1)
    {
        return eb1.m;
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
        ee ee1;
        ReportItem reportitem;
        ec ec1;
        if (view == null)
        {
            view = b.inflate(0x7f0300b5, null);
            ee1 = new ee(this, (byte)0);
            ee1.a = (TextView)view.findViewById(0x7f0b011f);
            ee1.b = (TextView)view.findViewById(0x7f0b0273);
            ee1.c = (TextView)view.findViewById(0x7f0b0274);
            ee1.d = (LinearLayout)view.findViewById(0x7f0b0272);
            view.setTag(ee1);
        } else
        {
            ee1 = (ee)view.getTag();
        }
        reportitem = (ReportItem)getItem(i1);
        ee1.a.setText(reportitem.getName());
        ee1.b.setText(com.aadhk.restpos.f.j.a(g, reportitem.getAmount(), d));
        ee1.c.setText((new StringBuilder()).append(reportitem.getPercentage()).append("%").toString());
        ec1 = new ec(this, reportitem);
        ee1.d.setOnClickListener(new ed(this, ec1));
        return view;
    }
}
