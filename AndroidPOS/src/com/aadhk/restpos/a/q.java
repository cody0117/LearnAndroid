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
import android.widget.LinearLayout;
import android.widget.TextView;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.OrderModifier;
import com.aadhk.restpos.c.ay;
import com.aadhk.restpos.c.bf;
import com.aadhk.restpos.c.v;
import com.aadhk.restpos.d.en;
import com.aadhk.restpos.g.ad;
import com.aadhk.restpos.util.p;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.a:
//            z, ab, aa, ad, 
//            r, s, ac, t, 
//            u, v, x

public final class q extends BaseExpandableListAdapter
{

    private List a;
    private TakeOrderActivity b;
    private String c;
    private int d;
    private LayoutInflater e;
    private en f;
    private String g[];
    private String h[];
    private String i[];
    private Resources j;
    private Company k;
    private ad l;

    private q(Context context)
    {
        b = (TakeOrderActivity)context;
        j = context.getResources();
        g = j.getStringArray(0x7f0e0013);
        h = j.getStringArray(0x7f0e0014);
    }

    public q(Context context, en en, List list, ad ad1)
    {
        this(context);
        a = list;
        f = en;
        l = ad1;
        e = LayoutInflater.from(context);
        k = ((POSApp)context.getApplicationContext()).b();
        c = k.getCurrencySign();
        d = k.getDecimalPlace();
    }

    static en a(q q1)
    {
        return q1.f;
    }

    static void a(q q1, int i1)
    {
        q1.a.remove(i1);
    }

    static void a(q q1, int i1, int j1)
    {
        ((OrderItem)q1.a.get(i1)).getOrderModifiers().remove(j1);
    }

    static void a(q q1, OrderItem orderitem)
    {
        ay ay1 = new ay(q1.b, orderitem, q1.l);
        ay1.setTitle(0x7f0802e8);
        ay1.a(new z(q1, orderitem));
        ay1.show();
    }

    static String[] a(q q1, String as[])
    {
        q1.i = as;
        return as;
    }

    static TakeOrderActivity b(q q1)
    {
        return q1.b;
    }

    static void b(q q1, OrderItem orderitem)
    {
        TakeOrderActivity takeorderactivity = q1.b;
        int _tmp = q1.d;
        v v1 = new v(takeorderactivity, orderitem);
        v1.a(new ab(q1));
        v1.show();
    }

    static void c(q q1, OrderItem orderitem)
    {
        List list = q1.l.a(orderitem.getModifierGroupId(), orderitem.getTax1Id(), orderitem.getTax2Id(), orderitem.getTax3Id(), q1.k.isItemPriceIncludeTax(), q1.k.getTax1(), q1.k.getTax2(), q1.k.getTax3(), q1.k.getDecimalPlace());
        bf bf1 = new bf(q1.b, orderitem, list);
        bf1.a(new aa(q1));
        bf1.show();
    }

    static String[] c(q q1)
    {
        return q1.h;
    }

    static String[] d(q q1)
    {
        return q1.i;
    }

    static String[] e(q q1)
    {
        return q1.g;
    }

    public final Object getChild(int i1, int j1)
    {
        return ((OrderItem)a.get(i1)).getOrderModifiers().get(j1);
    }

    public final long getChildId(int i1, int j1)
    {
        return (long)j1;
    }

    public final View getChildView(int i1, int j1, boolean flag, View view, ViewGroup viewgroup)
    {
        com.aadhk.restpos.a.ad ad1;
        OrderModifier ordermodifier;
        if (view == null)
        {
            view = e.inflate(0x7f030089, null);
            ad1 = new com.aadhk.restpos.a.ad(this, (byte)0);
            ad1.c = (TextView)view.findViewById(0x7f09018a);
            ad1.a = (TextView)view.findViewById(0x7f090171);
            ad1.b = (TextView)view.findViewById(0x7f0900f3);
            ad1.e = (LinearLayout)view.findViewById(0x7f0901ba);
            ad1.d = (LinearLayout)view.findViewById(0x7f0901b9);
            view.setTag(ad1);
        } else
        {
            ad1 = (com.aadhk.restpos.a.ad)view.getTag();
        }
        ad1.e.setOnClickListener(new r(this, i1, j1, ad1));
        ad1.d.setOnClickListener(new s(this, i1, j1, ad1));
        view.setTag(ad1);
        ordermodifier = (OrderModifier)getChild(i1, j1);
        ad1.a.setText(ordermodifier.getModifierName());
        ad1.b.setText(p.a(d, ordermodifier.getModifierPrice() * (double)ordermodifier.getQty(), c));
        if (ordermodifier.getType() == 2)
        {
            ad1.c.setText((new StringBuilder("-")).append(ordermodifier.getQty()).toString());
            return view;
        } else
        {
            ad1.c.setText((new StringBuilder("+")).append(ordermodifier.getQty()).toString());
            return view;
        }
    }

    public final int getChildrenCount(int i1)
    {
        return ((OrderItem)a.get(i1)).getOrderModifiers().size();
    }

    public final Object getGroup(int i1)
    {
        return a.get(i1);
    }

    public final int getGroupCount()
    {
        return a.size();
    }

    public final long getGroupId(int i1)
    {
        return (long)i1;
    }

    public final View getGroupView(int i1, boolean flag, View view, ViewGroup viewgroup)
    {
        ac ac1;
        OrderItem orderitem;
        String s1;
        if (view == null)
        {
            view = e.inflate(0x7f030088, null);
            ac1 = new ac(this, (byte)0);
            ac1.a = (TextView)view.findViewById(0x7f090171);
            ac1.b = (TextView)view.findViewById(0x7f0900f3);
            ac1.f = (LinearLayout)view.findViewById(0x7f0901b2);
            ac1.g = (LinearLayout)view.findViewById(0x7f0901b6);
            ac1.c = (TextView)view.findViewById(0x7f09018a);
            ac1.d = (TextView)view.findViewById(0x7f0901b7);
            ac1.e = (TextView)view.findViewById(0x7f0901b5);
            ac1.h = (LinearLayout)view.findViewById(0x7f0901b4);
            view.setTag(ac1);
        } else
        {
            ac1 = (ac)view.getTag();
        }
        orderitem = (OrderItem)getGroup(i1);
        s1 = "";
        if (orderitem.getDiscountAmt() != 0.0D)
        {
            s1 = (new StringBuilder("-")).append(p.a(d, orderitem.getDiscountAmt(), c)).append(": ").append(orderitem.getDiscountName()).toString();
        }
        if (orderitem.getStatus() == 2)
        {
            s1 = (new StringBuilder()).append(s1).append(", ").append(j.getString(0x7f0802d2)).toString();
        }
        if (orderitem.getRemark() != null && !"".equals(orderitem.getRemark()))
        {
            s1 = (new StringBuilder()).append(s1).append(", ").append(orderitem.getRemark()).toString();
        }
        if (!s1.equals(""))
        {
            ac1.e.setVisibility(0);
            if (s1.charAt(0) == ',')
            {
                s1 = s1.substring(1);
            }
            ac1.e.setText(s1);
        } else
        {
            ac1.e.setVisibility(8);
        }
        ac1.a.setText(orderitem.getItemName());
        ac1.b.setText(p.a(d, orderitem.getItemPrice(), c));
        ac1.d.setText(p.a(d, (double)orderitem.getQty() * orderitem.getItemPrice(), c));
        ac1.c.setText((new StringBuilder("x")).append(orderitem.getQty()).toString());
        ac1.g.setOnClickListener(new t(this, orderitem, i1));
        ac1.f.setOnClickListener(new u(this, orderitem));
        if (!TextUtils.isEmpty(orderitem.getModifierGroupId()))
        {
            ac1.h.setOnClickListener(new com.aadhk.restpos.a.v(this, orderitem));
            return view;
        } else
        {
            ac1.h.setOnClickListener(new x(this, orderitem));
            return view;
        }
    }

    public final boolean hasStableIds()
    {
        return false;
    }

    public final boolean isChildSelectable(int i1, int j1)
    {
        return true;
    }
}
