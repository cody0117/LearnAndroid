// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.TextView;
import com.aadhk.restpos.bean.Reservation;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.a:
//            bj, bk

public final class bi extends BaseExpandableListAdapter
{

    private Map a;
    private List b;
    private LayoutInflater c;

    public bi(Context context, Map map, List list)
    {
        a = map;
        b = list;
        c = LayoutInflater.from(context);
    }

    public final Object getChild(int i, int j)
    {
        return ((List)a.get(b.get(i))).get(j);
    }

    public final long getChildId(int i, int j)
    {
        return (long)j;
    }

    public final View getChildView(int i, int j, boolean flag, View view, ViewGroup viewgroup)
    {
        bj bj1;
        String s;
        Reservation reservation;
        String s1;
        int k;
        String s2;
        String s3;
        if (view == null)
        {
            view = c.inflate(0x7f0300db, null);
            bj1 = new bj(this, (byte)0);
            bj1.a = (TextView)view.findViewById(0x7f09026b);
            bj1.b = (TextView)view.findViewById(0x7f09026f);
            bj1.c = (TextView)view.findViewById(0x7f0902ee);
            bj1.d = (TextView)view.findViewById(0x7f09026c);
            view.setTag(bj1);
        } else
        {
            bj1 = (bj)view.getTag();
        }
        s = (String)b.get(i);
        reservation = (Reservation)((List)a.get(s)).get(j);
        s1 = reservation.getName();
        k = reservation.getGuestNumber();
        s2 = reservation.getReservedTime();
        s3 = reservation.getPhone();
        bj1.a.setText(s1);
        bj1.b.setText((new StringBuilder("(")).append(k).append(")").toString());
        bj1.c.setText(s2);
        bj1.d.setText(s3);
        return view;
    }

    public final int getChildrenCount(int i)
    {
        return ((List)a.get(b.get(i))).size();
    }

    public final Object getGroup(int i)
    {
        return b.get(i);
    }

    public final int getGroupCount()
    {
        return b.size();
    }

    public final long getGroupId(int i)
    {
        return (long)i;
    }

    public final View getGroupView(int i, boolean flag, View view, ViewGroup viewgroup)
    {
        bk bk1;
        if (view == null)
        {
            view = c.inflate(0x7f0300dc, null);
            bk bk2 = new bk(this, (byte)0);
            bk2.a = (TextView)view.findViewById(0x7f0902ef);
            view.setTag(bk2);
            bk1 = bk2;
        } else
        {
            bk1 = (bk)view.getTag();
        }
        bk1.a.setText((CharSequence)b.get(i));
        return view;
    }

    public final boolean hasStableIds()
    {
        return true;
    }

    public final boolean isChildSelectable(int i, int j)
    {
        return true;
    }
}
