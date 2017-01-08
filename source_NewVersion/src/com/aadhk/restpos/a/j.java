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
import java.util.List;

// Referenced classes of package com.aadhk.restpos.a:
//            l, k

public final class j extends BaseExpandableListAdapter
{

    private List a;
    private Context b;
    private String c;
    private int d;
    private LayoutInflater e;
    private Resources f;

    public j(Context context, List list)
    {
        b = context;
        a = list;
        f = context.getResources();
        Company company = ((POSApp)context.getApplicationContext()).b();
        c = company.getCurrencySign();
        d = company.getDecimalPlace();
        e = LayoutInflater.from(context);
    }

    public final Object getChild(int i, int i1)
    {
        return ((OrderItem)a.get(i)).getOrderModifiers().get(i1);
    }

    public final long getChildId(int i, int i1)
    {
        return (long)i1;
    }

    public final View getChildView(int i, int i1, boolean flag, View view, ViewGroup viewgroup)
    {
        l l1;
        OrderModifier ordermodifier;
        if (view == null)
        {
            view = e.inflate(0x7f030072, null);
            l1 = new l(this, (byte)0);
            l1.c = (TextView)view.findViewById(0x7f0b0144);
            l1.a = (TextView)view.findViewById(0x7f0b012c);
            l1.b = (TextView)view.findViewById(0x7f0b00d3);
            view.setTag(l1);
        } else
        {
            l1 = (l)view.getTag();
        }
        ordermodifier = (OrderModifier)getChild(i, i1);
        l1.a.setText(ordermodifier.getModifierName());
        l1.b.setText(com.aadhk.restpos.f.j.a(d, ordermodifier.getModifierPrice(), c));
        if (ordermodifier.getType() == 2)
        {
            if (ordermodifier.getQty() > 0)
            {
                l1.c.setText((new StringBuilder("-")).append(ordermodifier.getQty()).toString());
                return view;
            } else
            {
                l1.c.setText((new StringBuilder()).append(ordermodifier.getQty()).toString());
                return view;
            }
        }
        if (ordermodifier.getQty() > 0)
        {
            l1.c.setText((new StringBuilder("+")).append(ordermodifier.getQty()).toString());
            return view;
        } else
        {
            l1.c.setText((new StringBuilder()).append(ordermodifier.getQty()).toString());
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
        k k1;
        OrderItem orderitem;
        double d1;
        String s;
        if (view == null)
        {
            view = e.inflate(0x7f030071, null);
            k1 = new k(this, (byte)0);
            k1.c = (TextView)view.findViewById(0x7f0b012c);
            k1.d = (TextView)view.findViewById(0x7f0b00d3);
            k1.e = (TextView)view.findViewById(0x7f0b0144);
            k1.a = (ImageView)view.findViewById(0x7f0b0165);
            k1.b = (ImageView)view.findViewById(0x7f0b0169);
            k1.a.setVisibility(4);
            k1.b.setVisibility(4);
            k1.f = (TextView)view.findViewById(0x7f0b0168);
            k1.g = (TextView)view.findViewById(0x7f0b010e);
            view.setTag(k1);
        } else
        {
            k1 = (k)view.getTag();
        }
        orderitem = (OrderItem)a.get(i);
        k1.d.setText(com.aadhk.restpos.f.j.a(d, orderitem.getItemPrice(), c));
        k1.e.setText((new StringBuilder("x")).append(orderitem.getNum()).toString());
        d1 = (double)orderitem.getNum() * orderitem.getItemPrice();
        k1.f.setText(com.aadhk.restpos.f.j.a(d, d1, c));
        k1.c.setText(orderitem.getItemName());
        s = "";
        if (orderitem.getDisAmt() != 0.0D)
        {
            s = (new StringBuilder("-")).append(com.aadhk.restpos.f.j.a(d, orderitem.getDisAmt(), c)).append(": ").append(orderitem.getDisName()).toString();
        }
        if (orderitem.getStatus() == 1)
        {
            s = (new StringBuilder()).append(s).append(", ").append(f.getString(0x7f090273)).toString();
            k1.f.setText("-");
        } else
        if (orderitem.getStatus() == 2)
        {
            s = (new StringBuilder()).append(s).append(", ").append(f.getString(0x7f090274)).toString();
        }
        if (orderitem.getRemark() != null && !"".equals(orderitem.getRemark()))
        {
            s = (new StringBuilder()).append(s).append(", ").append(orderitem.getRemark()).toString();
        }
        if (!s.equals(""))
        {
            k1.g.setVisibility(0);
            if (s.charAt(0) == ',')
            {
                s = s.substring(1);
            }
            k1.g.setText(s);
            return view;
        } else
        {
            k1.g.setVisibility(8);
            return view;
        }
    }

    public final boolean hasStableIds()
    {
        return false;
    }

    public final boolean isChildSelectable(int i, int i1)
    {
        return true;
    }
}
