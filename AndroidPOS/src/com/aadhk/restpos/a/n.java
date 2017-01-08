// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.OrderModifier;
import com.aadhk.restpos.util.p;
import com.aadhk.restpos.util.r;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.a:
//            p, o

public final class n extends BaseExpandableListAdapter
{

    private List a;
    private Context b;
    private String c;
    private int d;
    private LayoutInflater e;
    private Resources f;
    private r g;

    public n(Context context, List list)
    {
        b = context;
        a = list;
        f = context.getResources();
        Company company = ((POSApp)context.getApplicationContext()).b();
        c = company.getCurrencySign();
        d = company.getDecimalPlace();
        e = LayoutInflater.from(context);
        g = new r(context);
    }

    public final Object getChild(int i, int j)
    {
        return ((OrderItem)a.get(i)).getOrderModifiers().get(j);
    }

    public final long getChildId(int i, int j)
    {
        return (long)j;
    }

    public final View getChildView(int i, int j, boolean flag, View view, ViewGroup viewgroup)
    {
        com.aadhk.restpos.a.p p1;
        OrderModifier ordermodifier;
        if (view == null)
        {
            view = e.inflate(0x7f030089, null);
            p1 = new com.aadhk.restpos.a.p(this, (byte)0);
            p1.c = (TextView)view.findViewById(0x7f09018a);
            p1.a = (TextView)view.findViewById(0x7f090171);
            p1.b = (TextView)view.findViewById(0x7f0900f3);
            view.setTag(p1);
        } else
        {
            p1 = (com.aadhk.restpos.a.p)view.getTag();
        }
        ordermodifier = (OrderModifier)getChild(i, j);
        p1.a.setText(ordermodifier.getModifierName());
        p1.b.setText(p.a(d, ordermodifier.getModifierPrice() * (double)ordermodifier.getQty(), c));
        if (ordermodifier.getType() == 2)
        {
            if (ordermodifier.getQty() > 0)
            {
                p1.c.setText((new StringBuilder("-")).append(ordermodifier.getQty()).toString());
                return view;
            } else
            {
                p1.c.setText((new StringBuilder()).append(ordermodifier.getQty()).toString());
                return view;
            }
        }
        if (ordermodifier.getQty() > 0)
        {
            p1.c.setText((new StringBuilder("+")).append(ordermodifier.getQty()).toString());
            return view;
        } else
        {
            p1.c.setText((new StringBuilder()).append(ordermodifier.getQty()).toString());
            return view;
        }
    }

    public final int getChildrenCount(int i)
    {
        return ((OrderItem)a.get(i)).getOrderModifiers().size();
    }

    public final Object getGroup(int i)
    {
        return a.get(i);
    }

    public final int getGroupCount()
    {
        return a.size();
    }

    public final long getGroupId(int i)
    {
        return (long)i;
    }

    public final View getGroupView(int i, boolean flag, View view, ViewGroup viewgroup)
    {
        o o1;
        OrderItem orderitem;
        double d1;
        String s;
        if (view == null)
        {
            view = e.inflate(0x7f030088, null);
            o1 = new o(this, (byte)0);
            o1.c = (TextView)view.findViewById(0x7f090171);
            o1.d = (TextView)view.findViewById(0x7f0900f3);
            o1.e = (TextView)view.findViewById(0x7f09018a);
            o1.a = (ImageView)view.findViewById(0x7f0901b3);
            o1.b = (ImageView)view.findViewById(0x7f0901b8);
            o1.a.setVisibility(4);
            o1.b.setVisibility(4);
            o1.f = (TextView)view.findViewById(0x7f0901b7);
            o1.g = (TextView)view.findViewById(0x7f0901b5);
            view.setTag(o1);
        } else
        {
            o1 = (o)view.getTag();
        }
        orderitem = (OrderItem)a.get(i);
        o1.d.setText(p.a(d, orderitem.getItemPrice(), c));
        o1.e.setText((new StringBuilder("x")).append(orderitem.getQty()).toString());
        d1 = (double)orderitem.getQty() * orderitem.getItemPrice();
        o1.f.setText(p.a(d, d1, c));
        o1.c.setText(orderitem.getItemName());
        o1.c.setTextSize(g.o());
        s = "";
        if (orderitem.getDiscountAmt() != 0.0D)
        {
            s = (new StringBuilder("-")).append(p.a(d, orderitem.getDiscountAmt(), c)).append(": ").append(orderitem.getDiscountName()).toString();
        }
        if (orderitem.getStatus() == 1)
        {
            s = (new StringBuilder()).append(s).append(", ").append(f.getString(0x7f0802d1)).toString();
            o1.f.setText("-");
        } else
        if (orderitem.getStatus() == 2)
        {
            s = (new StringBuilder()).append(s).append(", ").append(f.getString(0x7f0802d2)).toString();
        }
        if (orderitem.getRemark() != null && !"".equals(orderitem.getRemark()))
        {
            s = (new StringBuilder()).append(s).append(", ").append(orderitem.getRemark()).toString();
        }
        if (!s.equals(""))
        {
            o1.g.setVisibility(0);
            if (s.charAt(0) == ',')
            {
                s = s.substring(1);
            }
            o1.g.setText(s);
        } else
        {
            o1.g.setVisibility(8);
        }
        if (orderitem.getStatus() == 3)
        {
            o1.c.setPaintFlags(0x10 | o1.c.getPaintFlags());
            o1.d.setPaintFlags(0x10 | o1.d.getPaintFlags());
            o1.e.setPaintFlags(0x10 | o1.e.getPaintFlags());
            o1.f.setPaintFlags(0x10 | o1.f.getPaintFlags());
            return view;
        } else
        {
            o1.c.setPaintFlags(0);
            o1.d.setPaintFlags(0);
            o1.e.setPaintFlags(0);
            o1.f.setPaintFlags(0);
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
