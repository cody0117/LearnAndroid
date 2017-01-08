// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
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
import com.aadhk.product.library.a.a;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.a.m;
import com.aadhk.restpos.b.n;
import com.aadhk.restpos.b.w;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.OrderModifier;
import com.aadhk.restpos.f.i;
import com.aadhk.restpos.f.j;
import com.aadhk.restpos.f.l;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            bx, bw

public final class bv extends Fragment
    implements android.view.View.OnClickListener
{

    private TakeOrderActivity a;
    private Button b;
    private String c;
    private int d;
    private Order e;
    private n f;
    private w g;
    private com.aadhk.restpos.b.i h;
    private List i;
    private View j;
    private TextView k;
    private TextView l;
    private TextView m;
    private TextView n;
    private SQLiteDatabase o;
    private l p;

    public bv()
    {
    }

    static Order a(bv bv1)
    {
        return bv1.e;
    }

    static List b(bv bv1)
    {
        return bv1.i;
    }

    static TakeOrderActivity c(bv bv1)
    {
        return bv1.a;
    }

    static w d(bv bv1)
    {
        return bv1.g;
    }

    static l e(bv bv1)
    {
        return bv1.p;
    }

    static n f(bv bv1)
    {
        return bv1.f;
    }

    static com.aadhk.restpos.b.i g(bv bv1)
    {
        return bv1.h;
    }

    public final void a()
    {
        Iterator iterator = i.iterator();
        double d1 = 0.0D;
        while (iterator.hasNext()) 
        {
            OrderItem orderitem = (OrderItem)iterator.next();
            d1 += orderitem.getItemPrice() * (double)orderitem.getNum();
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
        m.setText((new StringBuilder()).append(e.getOrderNum()).toString());
        k.setText(com.aadhk.restpos.f.i.c(e.getStartTime()));
        l.setText((new StringBuilder()).append(e.getPersonNum()).toString());
        n.setText(com.aadhk.restpos.f.j.a(d, d1, c));
    }

    public final void a(int i1)
    {
        l.setText((new StringBuilder()).append(i1).toString());
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        Company company = a.n();
        c = company.getCurrencySign();
        d = company.getDecimalPlace();
        e = a.p();
        i = a.q();
        o = a.b();
        h = new com.aadhk.restpos.b.i(o);
        f = new n(o);
        g = new w(o);
        b = (Button)j.findViewById(0x7f0b013f);
        b.setOnClickListener(this);
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
            a a1;
label1:
            {
                if (view == b)
                {
                    for (int i1 = 0; i1 < i.size(); i1++)
                    {
                        OrderItem orderitem = (OrderItem)i.get(i1);
                        if (orderitem.getNum() == 0)
                        {
                            i.remove(orderitem);
                        }
                    }

                    if (i.size() <= 0)
                    {
                        break label0;
                    }
                    a.a(i, false);
                    a1 = new a(a, new bx(this), getResources().getString(0x7f0901f1));
                    if (android.os.Build.VERSION.SDK_INT < 11)
                    {
                        break label1;
                    }
                    a1.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
                }
                return;
            }
            a1.execute(null);
            return;
        }
        Toast.makeText(a, 0x7f0901f3, 1).show();
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        p = new l(a);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        j = layoutinflater.inflate(0x7f030074, viewgroup, false);
        m = (TextView)j.findViewById(0x7f0b016e);
        k = (TextView)j.findViewById(0x7f0b0170);
        l = (TextView)j.findViewById(0x7f0b0171);
        n = (TextView)j.findViewById(0x7f0b016f);
        return j;
    }

    public final void onResume()
    {
        int i1 = 0;
        super.onResume();
        TextView textview = (TextView)j.findViewById(0x7f0b011b);
        ExpandableListView expandablelistview;
        if (i.size() > 0)
        {
            textview.setVisibility(8);
        } else
        {
            textview.setVisibility(0);
        }
        expandablelistview = (ExpandableListView)j.findViewById(0x102000a);
        expandablelistview.setGroupIndicator(null);
        expandablelistview.setAdapter(new m(a, this, i, o));
        expandablelistview.setOnGroupClickListener(new bw(this));
        for (; i1 < i.size(); i1++)
        {
            expandablelistview.expandGroup(i1);
        }

        a();
    }
}
