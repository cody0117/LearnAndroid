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
import com.aadhk.restpos.util.p;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            jx, kb, ka

final class jz extends BaseExpandableListAdapter
{

    final jx a;
    private LayoutInflater b;

    public jz(jx jx1)
    {
        a = jx1;
        super();
        b = LayoutInflater.from(jx.j(jx1));
    }

    public final Object getChild(int i, int j)
    {
        return ((OrderItem)jx.a(a).get(i)).getOrderModifiers().get(j);
    }

    public final long getChildId(int i, int j)
    {
        return (long)j;
    }

    public final View getChildView(int i, int j, boolean flag, View view, ViewGroup viewgroup)
    {
        kb kb1;
        OrderModifier ordermodifier;
        double d;
        if (view == null)
        {
            view = b.inflate(0x7f0300a6, null);
            kb1 = new kb(this, (byte)0);
            kb1.a = (TextView)view.findViewById(0x7f090171);
            kb1.b = (TextView)view.findViewById(0x7f0900f3);
            kb1.c = (TextView)view.findViewById(0x7f09018a);
            kb1.d = (TextView)view.findViewById(0x7f0901b7);
            kb1.e = (ImageView)view.findViewById(0x7f090283);
            kb1.e.setVisibility(4);
            view.setTag(kb1);
            view.setBackgroundColor(jx.j(a).getResources().getColor(0x7f070078));
        } else
        {
            kb1 = (kb)view.getTag();
        }
        ordermodifier = (OrderModifier)getChild(i, j);
        kb1.b.setText(p.a(jx.l(a), ordermodifier.getModifierPrice(), jx.m(a)));
        kb1.c.setText((new StringBuilder("x")).append(ordermodifier.getQty()).toString());
        d = (double)ordermodifier.getQty() * ordermodifier.getModifierPrice();
        kb1.d.setText(p.a(jx.l(a), d, jx.m(a)));
        if (ordermodifier.getType() == 2)
        {
            kb1.a.setText((new StringBuilder("-")).append(ordermodifier.getModifierName()).toString());
            return view;
        } else
        {
            kb1.a.setText((new StringBuilder("+")).append(ordermodifier.getModifierName()).toString());
            return view;
        }
    }

    public final int getChildrenCount(int i)
    {
        return ((OrderItem)jx.a(a).get(i)).getOrderModifiers().size();
    }

    public final Object getGroup(int i)
    {
        return jx.a(a).get(i);
    }

    public final int getGroupCount()
    {
        return jx.a(a).size();
    }

    public final long getGroupId(int i)
    {
        return (long)i;
    }

    public final View getGroupView(int i, boolean flag, View view, ViewGroup viewgroup)
    {
        ka ka1;
        OrderItem orderitem;
        double d;
        if (view == null)
        {
            view = b.inflate(0x7f0300a6, null);
            ka1 = new ka(this, (byte)0);
            ka1.a = (TextView)view.findViewById(0x7f090171);
            ka1.b = (TextView)view.findViewById(0x7f0900f3);
            ka1.c = (TextView)view.findViewById(0x7f09018a);
            ka1.d = (TextView)view.findViewById(0x7f0901b7);
            ka1.e = (ImageView)view.findViewById(0x7f090283);
            view.setTag(ka1);
        } else
        {
            ka1 = (ka)view.getTag();
        }
        orderitem = (OrderItem)jx.a(a).get(i);
        ka1.b.setText(p.a(jx.l(a), orderitem.getItemPrice(), jx.m(a)));
        ka1.c.setText((new StringBuilder("x")).append(orderitem.getQty()).toString());
        d = (double)orderitem.getQty() * orderitem.getItemPrice();
        ka1.d.setText(p.a(jx.l(a), d, jx.m(a)));
        ka1.a.setText(orderitem.getItemName());
        if (orderitem.isSelected())
        {
            ka1.e.setVisibility(0);
            return view;
        } else
        {
            ka1.e.setVisibility(4);
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
