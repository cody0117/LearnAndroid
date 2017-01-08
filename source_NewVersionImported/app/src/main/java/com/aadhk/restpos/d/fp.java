// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.aadhk.restpos.SplitBillActivity;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.OrderModifier;
import com.aadhk.restpos.f.j;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            fn, fr, fq

final class fp extends BaseExpandableListAdapter
{

    final fn a;
    private LayoutInflater b;

    public fp(fn fn1)
    {
        a = fn1;
        super();
        b = LayoutInflater.from(fn.c(fn1));
    }

    public final Object getChild(int i, int k)
    {
        return ((OrderItem)fn.a(a).get(i)).getOrderModifiers().get(k);
    }

    public final long getChildId(int i, int k)
    {
        return (long)k;
    }

    public final View getChildView(int i, int k, boolean flag, View view, ViewGroup viewgroup)
    {
        fr fr1;
        OrderModifier ordermodifier;
        double d;
        if (view == null)
        {
            view = b.inflate(0x7f030089, null);
            fr1 = new fr(this, (byte)0);
            fr1.a = (TextView)view.findViewById(0x7f0b012c);
            fr1.b = (TextView)view.findViewById(0x7f0b00d3);
            fr1.c = (TextView)view.findViewById(0x7f0b0144);
            fr1.d = (TextView)view.findViewById(0x7f0b0168);
            fr1.e = (ImageView)view.findViewById(0x7f0b021c);
            fr1.e.setVisibility(4);
            view.setTag(fr1);
            view.setBackgroundColor(fn.c(a).getResources().getColor(0x7f080062));
        } else
        {
            fr1 = (fr)view.getTag();
        }
        ordermodifier = (OrderModifier)getChild(i, k);
        fr1.b.setText(j.a(fn.d(a), ordermodifier.getModifierPrice(), fn.e(a)));
        fr1.c.setText((new StringBuilder("x")).append(ordermodifier.getQty()).toString());
        d = (double)ordermodifier.getQty() * ordermodifier.getModifierPrice();
        fr1.d.setText(j.a(fn.d(a), d, fn.e(a)));
        if (ordermodifier.getType() == 2)
        {
            fr1.a.setText((new StringBuilder("-")).append(ordermodifier.getModifierName()).toString());
            return view;
        } else
        {
            fr1.a.setText((new StringBuilder("+")).append(ordermodifier.getModifierName()).toString());
            return view;
        }
    }

    public final int getChildrenCount(int i)
    {
        return ((OrderItem)fn.a(a).get(i)).getOrderModifiers().size();
    }

    public final Object getGroup(int i)
    {
        return fn.a(a).get(i);
    }

    public final int getGroupCount()
    {
        return fn.a(a).size();
    }

    public final long getGroupId(int i)
    {
        return (long)i;
    }

    public final View getGroupView(int i, boolean flag, View view, ViewGroup viewgroup)
    {
        fq fq1;
        OrderItem orderitem;
        double d;
        if (view == null)
        {
            view = b.inflate(0x7f030089, null);
            fq1 = new fq(this, (byte)0);
            fq1.a = (TextView)view.findViewById(0x7f0b012c);
            fq1.b = (TextView)view.findViewById(0x7f0b00d3);
            fq1.c = (TextView)view.findViewById(0x7f0b0144);
            fq1.d = (TextView)view.findViewById(0x7f0b0168);
            fq1.e = (ImageView)view.findViewById(0x7f0b021c);
            view.setTag(fq1);
        } else
        {
            fq1 = (fq)view.getTag();
        }
        orderitem = (OrderItem)fn.a(a).get(i);
        fq1.b.setText(j.a(fn.d(a), orderitem.getItemPrice(), fn.e(a)));
        fq1.c.setText((new StringBuilder("x")).append(orderitem.getNum()).toString());
        d = (double)orderitem.getNum() * orderitem.getItemPrice();
        fq1.d.setText(j.a(fn.d(a), d, fn.e(a)));
        fq1.a.setText(orderitem.getItemName());
        if (orderitem.isSelected())
        {
            fq1.e.setVisibility(0);
            return view;
        } else
        {
            fq1.e.setVisibility(4);
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
