// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.app.Fragment;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.aadhk.product.library.c.c;
import com.aadhk.restpos.KitchenActivity;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.g.h;
import com.aadhk.restpos.util.ObservableScrollView;
import com.aadhk.restpos.util.o;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            au, at, as, ar

public final class aq extends Fragment
{

    private List a;
    private h b;
    private KitchenActivity c;
    private LinearLayout d;
    private LinearLayout e;
    private LinearLayout f;
    private LinearLayout g;
    private LinearLayout h;
    private LinearLayout i;
    private LinearLayout j;
    private LinearLayout k;
    private LinearLayout l;
    private TextView m;
    private TextView n;
    private TextView o;
    private TextView p;
    private TextView q;
    private TextView r;
    private ObservableScrollView s;
    private int t;
    private int u;
    private int v;
    private int w;

    public aq()
    {
    }

    static KitchenActivity a(aq aq1)
    {
        return aq1.c;
    }

    private void a()
    {
        int i1 = 0;
        while (i1 < a.size()) 
        {
            if (i1 == 0)
            {
                Order order2 = (Order)a.get(0);
                a(order2, d, m, p);
                a(j, order2);
                g.setVisibility(0);
            } else
            if (i1 == 1)
            {
                Order order1 = (Order)a.get(1);
                a(order1, e, n, q);
                a(k, order1);
                h.setVisibility(0);
            } else
            {
                Order order = (Order)a.get(2);
                a(order, f, o, r);
                a(l, order);
                i.setVisibility(0);
            }
            i1++;
        }
        if (s != null)
        {
            (new Handler()).post(new au(this));
        }
    }

    private void a(LinearLayout linearlayout, Order order)
    {
        linearlayout.removeAllViewsInLayout();
        for (Iterator iterator = order.getOrderItems().iterator(); iterator.hasNext();)
        {
            OrderItem orderitem = (OrderItem)iterator.next();
            View view = c.getLayoutInflater().inflate(0x7f030023, null);
            LinearLayout linearlayout1 = (LinearLayout)view.findViewById(0x7f090062);
            TextView textview = (TextView)view.findViewById(0x7f090063);
            TextView textview1 = (TextView)view.findViewById(0x7f090064);
            textview.setText(orderitem.getItemName());
            textview1.setText((new StringBuilder("x")).append(orderitem.getQty()).toString());
            textview.setTextSize(w);
            textview1.setTextSize(w);
            linearlayout.addView(view);
            if (orderitem.getStatus() == 0 || orderitem.getStatus() == 1)
            {
                textview.setPaintFlags(0);
                textview1.setPaintFlags(0);
                linearlayout1.setOnClickListener(new at(this));
            } else
            {
                textview.setPaintFlags(0x10 | textview.getPaintFlags());
                textview1.setPaintFlags(0x10 | textview1.getPaintFlags());
                linearlayout1.setOnClickListener(null);
            }
        }

    }

    private void a(Order order, LinearLayout linearlayout, TextView textview, TextView textview1)
    {
        long l1 = com.aadhk.restpos.util.o.f(order.getOrderTime(), com.aadhk.product.library.c.c.c());
        long l2;
        if (l1 > (long)t)
        {
            linearlayout.setBackgroundResource(0x7f070092);
        } else
        if (l1 < (long)t && l1 > (long)u)
        {
            linearlayout.setBackgroundResource(0x7f070093);
        } else
        if (l1 < (long)u && l1 > (long)v)
        {
            linearlayout.setBackgroundResource(0x7f070094);
        } else
        {
            linearlayout.setBackgroundResource(0x7f070095);
        }
        textview.setText((new StringBuilder()).append(order.getTableName()).append("(").append(order.getId()).append(")").toString());
        textview1.setText(order.getOrderTime());
        textview.setTextSize(-2 + w);
        textview1.setTextSize(-2 + w);
        l2 = com.aadhk.restpos.util.o.f(order.getOrderTime(), com.aadhk.product.library.c.c.c());
        if (l2 <= 0L)
        {
            textview1.setText((new StringBuilder()).append(order.getOrderTime()).append("     1").append(c.getResources().getString(0x7f0803a7)).toString());
        } else
        {
            textview1.setText((new StringBuilder()).append(order.getOrderTime()).append("     ").append(l2).append(c.getResources().getString(0x7f0803a7)).toString());
        }
        linearlayout.setOnClickListener(new as(this));
    }

    static ObservableScrollView b(aq aq1)
    {
        return aq1.s;
    }

    public final void a(List list)
    {
        a = list;
        a();
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        b = c.a();
        a = c.b();
    }

    public final void onAttach(Activity activity)
    {
        super.onAttach(activity);
        c = (KitchenActivity)activity;
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(0x7f0300b2, null);
        s = (ObservableScrollView)view.findViewById(0x7f090299);
        g = (LinearLayout)view.findViewById(0x7f09029b);
        h = (LinearLayout)view.findViewById(0x7f0902a0);
        i = (LinearLayout)view.findViewById(0x7f0902a5);
        d = (LinearLayout)view.findViewById(0x7f09029c);
        e = (LinearLayout)view.findViewById(0x7f0902a1);
        f = (LinearLayout)view.findViewById(0x7f0902a6);
        j = (LinearLayout)view.findViewById(0x7f09029f);
        k = (LinearLayout)view.findViewById(0x7f0902a4);
        l = (LinearLayout)view.findViewById(0x7f0902a9);
        m = (TextView)view.findViewById(0x7f09029d);
        n = (TextView)view.findViewById(0x7f0902a2);
        o = (TextView)view.findViewById(0x7f0902a7);
        p = (TextView)view.findViewById(0x7f09029e);
        q = (TextView)view.findViewById(0x7f0902a3);
        r = (TextView)view.findViewById(0x7f0902a8);
        s.a(new ar(this));
        return view;
    }

    public final void onResume()
    {
        super.onResume();
        t = c.f();
        u = c.g();
        v = c.h();
        w = c.i();
        a();
    }
}
