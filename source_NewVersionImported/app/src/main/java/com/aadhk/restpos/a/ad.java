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
import com.aadhk.restpos.f.j;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.a:
//            af, ae

public final class ad extends BaseExpandableListAdapter
{

    private List a;
    private Context b;
    private String c;
    private int d;
    private LayoutInflater e;
    private Resources f;

    public ad(Context context, List list)
    {
        b = context;
        a = list;
        f = context.getResources();
        e = LayoutInflater.from(context);
        Company company = ((POSApp)context.getApplicationContext()).b();
        c = company.getCurrencySign();
        d = company.getDecimalPlace();
    }

    public final Object getChild(int i, int k)
    {
        return ((OrderItem)a.get(i)).getOrderModifiers().get(k);
    }

    public final long getChildId(int i, int k)
    {
        return (long)k;
    }

    public final View getChildView(int i, int k, boolean flag, View view, ViewGroup viewgroup)
    {
        View view1 = e.inflate(0x7f030072, null);
        af af1 = new af(this, (byte)0);
        af1.c = (TextView)view1.findViewById(0x7f0b0144);
        af1.a = (TextView)view1.findViewById(0x7f0b012c);
        af1.b = (TextView)view1.findViewById(0x7f0b00d3);
        view1.setTag(af1);
        OrderModifier ordermodifier = (OrderModifier)getChild(i, k);
        af1.a.setText(ordermodifier.getModifierName());
        af1.b.setText(j.a(d, ordermodifier.getModifierPrice(), c));
        if (ordermodifier.getType() == 2)
        {
            if (ordermodifier.getQty() > 0)
            {
                af1.c.setText((new StringBuilder("-")).append(ordermodifier.getQty()).toString());
                return view1;
            } else
            {
                af1.c.setText((new StringBuilder()).append(ordermodifier.getQty()).toString());
                return view1;
            }
        }
        if (ordermodifier.getQty() > 0)
        {
            af1.c.setText((new StringBuilder("+")).append(ordermodifier.getQty()).toString());
            return view1;
        } else
        {
            af1.c.setText((new StringBuilder()).append(ordermodifier.getQty()).toString());
            return view1;
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
        ae ae1;
        OrderItem orderitem;
        double d1;
        if (view == null)
        {
            view = e.inflate(0x7f030071, null);
            ae1 = new ae(this, (byte)0);
            ae1.c = (TextView)view.findViewById(0x7f0b012c);
            ae1.d = (TextView)view.findViewById(0x7f0b00d3);
            ae1.e = (TextView)view.findViewById(0x7f0b0144);
            ae1.f = (TextView)view.findViewById(0x7f0b0168);
            ae1.g = (TextView)view.findViewById(0x7f0b010e);
            ae1.a = (ImageView)view.findViewById(0x7f0b0165);
            ae1.b = (ImageView)view.findViewById(0x7f0b0169);
            ae1.a.setVisibility(4);
            ae1.b.setVisibility(4);
            view.setTag(ae1);
        } else
        {
            ae1 = (ae)view.getTag();
        }
        orderitem = (OrderItem)a.get(i);
        ae1.d.setText(j.a(d, orderitem.getItemPrice(), c));
        ae1.e.setText((new StringBuilder()).append(orderitem.getNum()).toString());
        d1 = (double)orderitem.getNum() * orderitem.getItemPrice();
        ae1.f.setText(j.a(d, d1, c));
        if (orderitem.getStatus() == 1)
        {
            ae1.c.setText((new StringBuilder()).append(orderitem.getItemName()).append("(").append(f.getString(0x7f090273)).append(")").toString());
            ae1.f.setText("-");
            return view;
        } else
        {
            ae1.c.setText(orderitem.getItemName());
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
