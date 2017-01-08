// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.content.Context;
import android.content.res.Resources;
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
import com.aadhk.restpos.f.j;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.a:
//            bb, bc

public final class ba extends BaseExpandableListAdapter
{

    private Context a;
    private LayoutInflater b;
    private String c;
    private int d;
    private Resources e;
    private List f;

    public ba(Context context, List list)
    {
        a = context;
        f = list;
        e = context.getResources();
        Company company = ((POSApp)context.getApplicationContext()).b();
        c = company.getCurrencySign();
        d = company.getDecimalPlace();
        b = LayoutInflater.from(context);
    }

    public final Object getChild(int i, int k)
    {
        return ((Report)f.get(i)).getReportItems().get(k);
    }

    public final long getChildId(int i, int k)
    {
        return (long)k;
    }

    public final View getChildView(int i, int k, boolean flag, View view, ViewGroup viewgroup)
    {
        bb bb1;
        ReportItem reportitem;
        int l;
        if (view == null)
        {
            view = b.inflate(0x7f0300b4, null);
            bb bb2 = new bb(this, (byte)0);
            bb2.a = (TextView)view.findViewById(0x7f0b026f);
            bb2.c = (TextView)view.findViewById(0x7f0b0270);
            bb2.b = (TextView)view.findViewById(0x7f0b0271);
            view.setTag(bb2);
            bb1 = bb2;
        } else
        {
            bb1 = (bb)view.getTag();
        }
        reportitem = (ReportItem)getChild(i, k);
        l = ((Report)getGroup(i)).getId();
        bb1.a.setText(reportitem.getName());
        if (l == 14)
        {
            if (reportitem.getId() == 1L)
            {
                bb1.b.setText((new StringBuilder()).append(reportitem.getCount()).toString());
            } else
            {
                bb1.b.setText(j.a(d, reportitem.getAmount(), c));
            }
        } else
        if (l == 12)
        {
            bb1.c.setText(j.a(d, reportitem.getAmount(), c));
            bb1.b.setText((new StringBuilder()).append(reportitem.getPercentage()).append("%").toString());
        } else
        if (l == 13)
        {
            bb1.c.setText((new StringBuilder()).append(reportitem.getCount()).toString());
            bb1.b.setText((new StringBuilder()).append(reportitem.getPercentage()).append("%").toString());
        } else
        {
            bb1.c.setText((new StringBuilder()).append(reportitem.getCount()).toString());
            bb1.b.setText(j.a(d, reportitem.getAmount(), c));
        }
        if (l == 10 || l == 11 || l == 14)
        {
            bb1.c.setVisibility(8);
            return view;
        } else
        {
            bb1.c.setVisibility(0);
            return view;
        }
    }

    public final int getChildrenCount(int i)
    {
        return ((Report)f.get(i)).getReportItems().size();
    }

    public final Object getGroup(int i)
    {
        return f.get(i);
    }

    public final int getGroupCount()
    {
        return f.size();
    }

    public final long getGroupId(int i)
    {
        return (long)i;
    }

    public final View getGroupView(int i, boolean flag, View view, ViewGroup viewgroup)
    {
        bc bc1;
        Report report;
        if (view == null)
        {
            view = b.inflate(0x7f0300b8, null);
            bc1 = new bc(this, (byte)0);
            bc1.a = (TextView)view.findViewById(0x7f0b0030);
            bc1.b = (TextView)view.findViewById(0x7f0b0276);
            bc1.c = view.findViewById(0x7f0b0275);
            view.setTag(bc1);
        } else
        {
            bc1 = (bc)view.getTag();
        }
        if (i == 0)
        {
            bc1.c.setVisibility(8);
        } else
        {
            bc1.c.setVisibility(0);
        }
        report = (Report)f.get(i);
        if (TextUtils.isEmpty(report.getName()))
        {
            bc1.a.setVisibility(8);
        } else
        {
            bc1.a.setVisibility(0);
        }
        bc1.a.setText(report.getName());
        if (report.getReportItems().isEmpty())
        {
            bc1.b.setVisibility(0);
            return view;
        } else
        {
            bc1.b.setVisibility(8);
            return view;
        }
    }

    public final boolean hasStableIds()
    {
        return false;
    }

    public final boolean isChildSelectable(int i, int k)
    {
        return true;
    }
}
