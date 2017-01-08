// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ExpandableListView;
import android.widget.TextView;
import android.widget.Toast;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.a.q;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.OrderModifier;
import com.aadhk.restpos.g.ad;
import com.aadhk.restpos.g.h;
import com.aadhk.restpos.util.o;
import com.aadhk.restpos.util.p;
import com.aadhk.restpos.util.r;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            ep, eo

public final class en extends Fragment
    implements android.view.View.OnClickListener
{

    private TakeOrderActivity a;
    private Button b;
    private String c;
    private int d;
    private Order e;
    private List f;
    private View g;
    private TextView h;
    private TextView i;
    private TextView j;
    private ad k;
    private h l;
    private r m;

    public en()
    {
    }

    static Order a(en en1)
    {
        return en1.e;
    }

    static Order a(en en1, Order order)
    {
        en1.e = order;
        return order;
    }

    static List b(en en1)
    {
        return en1.f;
    }

    static TakeOrderActivity c(en en1)
    {
        return en1.a;
    }

    static ad d(en en1)
    {
        return en1.k;
    }

    static r e(en en1)
    {
        return en1.m;
    }

    public final void a()
    {
        Iterator iterator = f.iterator();
        double d1 = 0.0D;
        while (iterator.hasNext()) 
        {
            OrderItem orderitem = (OrderItem)iterator.next();
            d1 += orderitem.getItemPrice() * (double)orderitem.getQty();
            Iterator iterator1 = orderitem.getOrderModifiers().iterator();
            while (iterator1.hasNext()) 
            {
                OrderModifier ordermodifier = (OrderModifier)iterator1.next();
                if (ordermodifier.getType() == 1)
                {
                    d1 += ordermodifier.getModifierPrice() * (double)ordermodifier.getQty();
                } else
                {
                    d1 -= ordermodifier.getModifierPrice() * (double)ordermodifier.getQty();
                }
            }
        }
        h.setText(o.d(e.getOrderTime(), m.d()));
        i.setText((new StringBuilder()).append(e.getPersonNum()).toString());
        j.setText(p.a(d, d1, c));
    }

    public final void a(int i1)
    {
        i.setText((new StringBuilder()).append(i1).toString());
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        Company company = a.v();
        c = company.getCurrencySign();
        d = company.getDecimalPlace();
        e = a.k();
        f = a.l();
        k = a.c();
        l = a.z();
    }

    public final void onAttach(Activity activity)
    {
        super.onAttach(activity);
        a = (TakeOrderActivity)activity;
    }

    public final void onClick(View view)
    {
label0:
        {
            if (view == b)
            {
                for (int i1 = 0; i1 < f.size(); i1++)
                {
                    OrderItem orderitem = (OrderItem)f.get(i1);
                    if (orderitem.getQty() == 0)
                    {
                        f.remove(orderitem);
                    }
                }

                if (f.size() <= 0)
                {
                    break label0;
                }
                (new d(new ep(this, (byte)0), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
            }
            return;
        }
        Toast.makeText(a, 0x7f080230, 1).show();
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        m = a.A();
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        g = layoutinflater.inflate(0x7f03008b, viewgroup, false);
        h = (TextView)g.findViewById(0x7f0901bf);
        i = (TextView)g.findViewById(0x7f0901c0);
        j = (TextView)g.findViewById(0x7f0901be);
        b = (Button)g.findViewById(0x7f090184);
        b.setOnClickListener(this);
        return g;
    }

    public final void onResume()
    {
        int i1 = 0;
        super.onResume();
        TextView textview = (TextView)g.findViewById(0x7f09015f);
        ExpandableListView expandablelistview;
        if (f.size() > 0)
        {
            textview.setVisibility(8);
        } else
        {
            textview.setVisibility(0);
        }
        expandablelistview = (ExpandableListView)g.findViewById(0x102000a);
        expandablelistview.setGroupIndicator(null);
        expandablelistview.setAdapter(new q(a, this, f, k));
        expandablelistview.setOnGroupClickListener(new eo(this));
        for (; i1 < f.size(); i1++)
        {
            expandablelistview.expandGroup(i1);
        }

        a();
    }
}
