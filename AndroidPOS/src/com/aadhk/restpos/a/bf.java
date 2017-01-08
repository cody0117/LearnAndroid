// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.TextView;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Report;
import com.aadhk.restpos.bean.ReportItem;
import com.aadhk.restpos.util.p;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.a:
//            bg, bh

public final class bf extends BaseExpandableListAdapter
{

    private Context a;
    private LayoutInflater b;
    private String c;
    private int d;
    private List e;

    public bf(Context context, List list)
    {
        a = context;
        e = list;
        Company company = ((POSApp)context.getApplicationContext()).b();
        c = company.getCurrencySign();
        d = company.getDecimalPlace();
        b = LayoutInflater.from(context);
    }

    public final Object getChild(int i, int j)
    {
        return ((Report)e.get(i)).getReportItems().get(j);
    }

    public final long getChildId(int i, int j)
    {
        return (long)j;
    }

    public final View getChildView(int i, int j, boolean flag, View view, ViewGroup viewgroup)
    {
        bg bg1;
        ReportItem reportitem;
        int k;
        if (view == null)
        {
            view = b.inflate(0x7f0300d3, null);
            bg bg2 = new bg(this, (byte)0);
            bg2.a = (TextView)view.findViewById(0x7f0902e1);
            bg2.c = (TextView)view.findViewById(0x7f0902e2);
            bg2.b = (TextView)view.findViewById(0x7f0902e3);
            view.setTag(bg2);
            bg1 = bg2;
        } else
        {
            bg1 = (bg)view.getTag();
        }
        reportitem = (ReportItem)getChild(i, j);
        k = ((Report)getGroup(i)).getId();
        bg1.a.setText(reportitem.getName());
        if (k == 14)
        {
            if (reportitem.getId() == 1L)
            {
                bg1.b.setText((new StringBuilder()).append(reportitem.getCount()).toString());
            } else
            {
                bg1.b.setText(p.a(d, reportitem.getAmount(), c));
            }
        } else
        if (k == 12)
        {
            bg1.c.setText(p.a(d, reportitem.getAmount(), c));
            bg1.b.setText((new StringBuilder()).append(reportitem.getPercentage()).append("%").toString());
        } else
        if (k == 13)
        {
            bg1.c.setText((new StringBuilder()).append(reportitem.getCount()).toString());
            bg1.b.setText((new StringBuilder()).append(reportitem.getPercentage()).append("%").toString());
        } else
        {
            bg1.c.setText((new StringBuilder()).append(reportitem.getCount()).toString());
            bg1.b.setText(p.a(d, reportitem.getAmount(), c));
        }
        if (k == 10 || k == 11 || k == 14 || k == 15)
        {
            bg1.c.setVisibility(8);
            return view;
        } else
        {
            bg1.c.setVisibility(0);
            return view;
        }
    }

    public final int getChildrenCount(int i)
    {
        return ((Report)e.get(i)).getReportItems().size();
    }

    public final Object getGroup(int i)
    {
        return e.get(i);
    }

    public final int getGroupCount()
    {
        return e.size();
    }

    public final long getGroupId(int i)
    {
        return (long)i;
    }

    public final View getGroupView(int i, boolean flag, View view, ViewGroup viewgroup)
    {
        bh bh1;
        Report report;
        if (view == null)
        {
            view = b.inflate(0x7f0300d7, null);
            bh1 = new bh(this, (byte)0);
            bh1.a = (TextView)view.findViewById(0x7f090030);
            bh1.b = (TextView)view.findViewById(0x7f0902e8);
            bh1.c = view.findViewById(0x7f0902e7);
            view.setTag(bh1);
        } else
        {
            bh1 = (bh)view.getTag();
        }
        if (i == 0)
        {
            bh1.c.setVisibility(8);
        } else
        {
            bh1.c.setVisibility(0);
        }
        report = (Report)e.get(i);
        if (TextUtils.isEmpty(report.getName()))
        {
            bh1.a.setVisibility(8);
        } else
        {
            bh1.a.setVisibility(0);
        }
        bh1.a.setText(report.getName());
        if (report.getReportItems().isEmpty())
        {
            bh1.b.setVisibility(0);
            return view;
        } else
        {
            bh1.b.setVisibility(8);
            return view;
        }
    }

    public final boolean hasStableIds()
    {
        return false;
    }

    public final boolean isChildSelectable(int i, int j)
    {
        return true;
    }
}
