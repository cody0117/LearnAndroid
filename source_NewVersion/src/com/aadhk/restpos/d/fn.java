// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ExpandableListView;
import android.widget.TextView;
import com.aadhk.restpos.SplitBillActivity;
import com.aadhk.restpos.b.n;
import com.aadhk.restpos.b.u;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.OrderModifier;
import com.aadhk.restpos.c.ax;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            fp, fo

public final class fn extends Fragment
    implements android.view.View.OnClickListener
{

    private SplitBillActivity a;
    private Button b;
    private u c;
    private n d;
    private List e;
    private Order f;
    private String g;
    private int h;
    private View i;
    private ExpandableListView j;
    private TextView k;
    private TextView l;
    private fp m;
    private long n;
    private short o;

    public fn()
    {
    }

    static List a(fn fn1)
    {
        return fn1.e;
    }

    static fp b(fn fn1)
    {
        return fn1.m;
    }

    static SplitBillActivity c(fn fn1)
    {
        return fn1.a;
    }

    static int d(fn fn1)
    {
        return fn1.h;
    }

    static String e(fn fn1)
    {
        return fn1.g;
    }

    public final void a()
    {
        if (n > 0L)
        {
            l.setText(0x7f0901de);
        } else
        {
            l.setText(0x7f0901dd);
        }
        e = d.b(f.getId(), n);
        m = new fp(this);
        j.setAdapter(m);
        for (int i1 = 0; i1 < e.size(); i1++)
        {
            j.expandGroup(i1);
        }

        if (e.size() > 0)
        {
            j.setVisibility(0);
            k.setVisibility(8);
            m.notifyDataSetChanged();
        } else
        {
            j.setVisibility(8);
            k.setVisibility(0);
        }
        if (o == 2 && e.size() > 0)
        {
            b.setVisibility(0);
            return;
        } else
        {
            b.setVisibility(8);
            return;
        }
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        android.database.sqlite.SQLiteDatabase sqlitedatabase = a.c();
        c = new u(sqlitedatabase);
        d = new n(sqlitedatabase);
        f = a.e();
    }

    public final void onAttach(Activity activity)
    {
        super.onAttach(activity);
        a = (SplitBillActivity)activity;
    }

    public final void onClick(View view)
    {
        if (view != b) goto _L2; else goto _L1
_L1:
        double d1;
        ArrayList arraylist;
        Iterator iterator;
        d1 = 0.0D;
        arraylist = new ArrayList();
        iterator = e.iterator();
_L6:
        if (iterator.hasNext())
        {
            OrderItem orderitem = (OrderItem)iterator.next();
            if (!orderitem.isSelected())
            {
                continue; /* Loop/switch isn't completed */
            }
            arraylist.add(orderitem);
            double d2 = d1 + orderitem.getItemPrice() * (double)orderitem.getNum();
            ax ax1;
            for (Iterator iterator1 = orderitem.getOrderModifiers().iterator(); iterator1.hasNext();)
            {
                OrderModifier ordermodifier = (OrderModifier)iterator1.next();
                if (ordermodifier.getType() == 1)
                {
                    d2 += ordermodifier.getModifierPrice() * (double)ordermodifier.getQty();
                } else
                {
                    d2 -= ordermodifier.getModifierPrice() * (double)ordermodifier.getQty();
                }
            }

            d1 = d2;
            continue; /* Loop/switch isn't completed */
        }
        if (arraylist.isEmpty()) goto _L4; else goto _L3
_L3:
        c.a(f.getId(), n, arraylist, d1);
        f.setSplitType((short)2);
        n = 0L;
        a.b();
_L2:
        return;
_L4:
        ax1 = new ax(a);
        ax1.a(getString(0x7f0901e9));
        ax1.show();
        return;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Company company = a.n();
        g = company.getCurrencySign();
        h = company.getDecimalPlace();
        long l1;
        short word0;
        if (getArguments() != null)
        {
            l1 = getArguments().getLong("bundleBillId");
        } else
        {
            l1 = 0L;
        }
        n = l1;
        if (getArguments() != null)
        {
            word0 = getArguments().getShort("bundleSplitType");
        } else
        {
            word0 = 2;
        }
        o = word0;
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        i = layoutinflater.inflate(0x7f030088, viewgroup, false);
        b = (Button)i.findViewById(0x7f0b00b3);
        b.setOnClickListener(this);
        j = (ExpandableListView)i.findViewById(0x102000a);
        k = (TextView)i.findViewById(0x7f0b011b);
        l = (TextView)i.findViewById(0x7f0b0044);
        j.setGroupIndicator(null);
        if (o == 2)
        {
            j.setOnGroupClickListener(new fo(this));
        }
        return i;
    }

    public final void onResume()
    {
        super.onResume();
        a();
    }
}
