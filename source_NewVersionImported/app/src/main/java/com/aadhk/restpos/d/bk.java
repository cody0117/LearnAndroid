// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ExpandableListView;
import android.widget.TextView;
import com.aadhk.product.library.a.a;
import com.aadhk.product.library.a.b;
import com.aadhk.restpos.PaymentActivity;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.a.j;
import com.aadhk.restpos.b.l;
import com.aadhk.restpos.b.m;
import com.aadhk.restpos.b.n;
import com.aadhk.restpos.b.u;
import com.aadhk.restpos.b.w;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Customer;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.OrderModifier;
import com.aadhk.restpos.bean.OrderPayment;
import com.aadhk.restpos.bean.RolePermission;
import com.aadhk.restpos.bean.SplitBill;
import com.aadhk.restpos.c.ax;
import com.aadhk.restpos.c.bz;
import com.aadhk.restpos.c.d;
import com.aadhk.restpos.c.y;
import com.aadhk.restpos.f.h;
import com.aadhk.restpos.f.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            bu, bl, br, bq, 
//            bp, bo, bt

public final class bk extends Fragment
    implements android.view.View.OnClickListener
{

    private double A;
    private double B;
    private boolean C;
    private int D;
    private List E;
    private Company F;
    b a;
    private TakeOrderActivity b;
    private Button c;
    private Button d;
    private ExpandableListView e;
    private Order f;
    private Customer g;
    private Resources h;
    private String i;
    private String j;
    private n k;
    private w l;
    private u m;
    private m n;
    private l o;
    private List p;
    private View q;
    private TextView r;
    private TextView s;
    private TextView t;
    private TextView u;
    private j v;
    private com.aadhk.restpos.f.l w;
    private RolePermission x;
    private double y;
    private double z;

    public bk()
    {
        a = new bu(this);
    }

    static double a(bk bk1, double d1)
    {
        bk1.y = d1;
        return d1;
    }

    static List a(bk bk1)
    {
        return bk1.p;
    }

    static List a(bk bk1, List list)
    {
        bk1.p = list;
        return list;
    }

    private void a()
    {
        TextView textview = (TextView)q.findViewById(0x7f0b011b);
        if (p.size() > 0)
        {
            textview.setVisibility(8);
        } else
        {
            textview.setVisibility(0);
        }
        e = (ExpandableListView)q.findViewById(0x102000a);
        v = new j(b, p);
        e.setAdapter(v);
        e.setGroupIndicator(null);
        e.setOnGroupClickListener(new bl(this));
        for (int i1 = 0; i1 < p.size(); i1++)
        {
            e.expandGroup(i1);
        }

    }

    static void a(bk bk1, OrderItem orderitem)
    {
        List list = bk1.o.b(1);
        bz bz1 = new bz(bk1.b, orderitem.getCancelReason(), list);
        String s1 = bk1.getString(0x7f09028a);
        Object aobj[] = new Object[1];
        aobj[0] = orderitem.getItemName();
        bz1.setTitle(String.format(s1, aobj));
        bz1.a(new br(bk1, orderitem, bz1));
        bz1.show();
    }

    private void a(List list)
    {
        y = 0.0D;
        z = 0.0D;
        if (list != null)
        {
            Iterator iterator = list.iterator();
            double d1 = 0.0D;
            while (iterator.hasNext()) 
            {
                OrderItem orderitem = (OrderItem)iterator.next();
                double d2;
                if (orderitem.getStatus() != 1)
                {
                    double d3 = orderitem.getItemPrice() * (double)orderitem.getNum();
                    for (Iterator iterator1 = orderitem.getOrderModifiers().iterator(); iterator1.hasNext();)
                    {
                        OrderModifier ordermodifier = (OrderModifier)iterator1.next();
                        double d5 = ordermodifier.getModifierPrice() * (double)ordermodifier.getQty();
                        if (ordermodifier.getType() == 1)
                        {
                            d3 += d5;
                        } else
                        {
                            d3 -= d5;
                        }
                    }

                    double d4 = d1 + d3;
                    if (orderitem.getTax1Id() == 1)
                    {
                        y = y + com.aadhk.restpos.f.h.a(d3, A, D, C);
                    }
                    if (orderitem.getTax2Id() == 2)
                    {
                        z = z + com.aadhk.restpos.f.h.a(d3, B, D, C);
                    }
                    d2 = d4;
                } else
                {
                    d2 = d1;
                }
                d1 = d2;
            }
        } else
        {
            d1 = 0.0D;
        }
        f.setSubTotal(d1);
    }

    static double b(bk bk1, double d1)
    {
        bk1.z = d1;
        return d1;
    }

    static Resources b(bk bk1)
    {
        return bk1.h;
    }

    private void b()
    {
        a(p);
        t.setText((new StringBuilder()).append(f.getOrderNum()).toString());
        r.setText(com.aadhk.restpos.f.i.c(f.getStartTime()));
        s.setText((new StringBuilder()).append(f.getPersonNum()).toString());
        u.setText(com.aadhk.restpos.f.j.a(D, f.getSubTotal(), i));
    }

    static void b(bk bk1, OrderItem orderitem)
    {
        List list = bk1.n.b(bk1.f.getTableName());
        d d1 = new d(bk1.b, list);
        d1.a(new bq(bk1, orderitem));
        d1.show();
    }

    static void b(bk bk1, List list)
    {
        bk1.a(list);
    }

    static RolePermission c(bk bk1)
    {
        return bk1.x;
    }

    static void c(bk bk1, OrderItem orderitem)
    {
        y y1 = new y(bk1.b, orderitem, bk1.D);
        y1.a(new bp(bk1, orderitem, y1));
        y1.show();
    }

    static TakeOrderActivity d(bk bk1)
    {
        return bk1.b;
    }

    static void d(bk bk1, OrderItem orderitem)
    {
        (new a(bk1.b, new bo(bk1, orderitem), bk1.h.getString(0x7f09017b))).execute(null);
    }

    static n e(bk bk1)
    {
        return bk1.k;
    }

    static List f(bk bk1)
    {
        return bk1.E;
    }

    static j g(bk bk1)
    {
        return bk1.v;
    }

    static void h(bk bk1)
    {
        bk1.b();
    }

    static Order i(bk bk1)
    {
        return bk1.f;
    }

    static void j(bk bk1)
    {
        bk1.a();
    }

    static com.aadhk.restpos.f.l k(bk bk1)
    {
        return bk1.w;
    }

    static double l(bk bk1)
    {
        return bk1.y;
    }

    static int m(bk bk1)
    {
        return bk1.D;
    }

    static double n(bk bk1)
    {
        return bk1.z;
    }

    static w o(bk bk1)
    {
        return bk1.l;
    }

    public final void a(int i1)
    {
        s.setText((new StringBuilder()).append(i1).toString());
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        android.database.sqlite.SQLiteDatabase sqlitedatabase = b.b();
        k = new n(sqlitedatabase);
        l = new w(sqlitedatabase);
        m = new u(sqlitedatabase);
        n = new m(sqlitedatabase);
        o = new l(sqlitedatabase);
        F = b.n();
        i = F.getCurrencySign();
        C = F.isIncludeTax();
        D = F.getDecimalPlace();
        A = F.getTax1();
        B = F.getTax2();
        j = b.t();
        x = b.u();
        E = b.s();
    }

    public final void onAttach(Activity activity)
    {
        super.onAttach(activity);
        b = (TakeOrderActivity)activity;
    }

    public final void onClick(View view)
    {
        if (view == c)
        {
            if (f.getSplitType() == 0)
            {
                Order order = f.clone();
                order.setTax1Amt(y);
                order.setTax2Amt(z);
                Intent intent = new Intent();
                Bundle bundle = new Bundle();
                bundle.putParcelable("bundleOrderClone", order);
                bundle.putParcelable("bundleOrder", f);
                bundle.putParcelable("bundleCustomer", g);
                intent.putExtras(bundle);
                intent.setClass(b, com/aadhk/restpos/PaymentActivity);
                startActivity(intent);
                b.finish();
            } else
            if (com.aadhk.restpos.f.h.a(m.e(f.getId()), n.e(f.getId())))
            {
                List list = m.c(f.getId());
                if (!list.isEmpty())
                {
                    String as[] = new String[list.size()];
                    for (int i1 = 0; i1 < list.size(); i1++)
                    {
                        as[i1] = com.aadhk.restpos.f.j.a(((SplitBill)list.get(i1)).getAmount(), i);
                    }

                    com.aadhk.product.library.b.a a2 = new com.aadhk.product.library.b.a(b, as);
                    a2.setTitle(0x7f0901e0);
                    a2.a(new bt(this, list));
                    a2.show();
                    return;
                }
            } else
            if (f.getSplitType() == 2)
            {
                ax ax1 = new ax(b);
                ax1.a(getString(0x7f0901e1));
                ax1.show();
                return;
            } else
            {
                ax ax2 = new ax(b);
                ax2.a(getString(0x7f0901e1));
                ax2.show();
                return;
            }
        } else
        if (view == d)
        {
            f.setEndTime(com.aadhk.restpos.f.i.c());
            f.setCashierName(j);
            f.setTax1Name(F.getTax1Name());
            f.setTax2Name(F.getTax2Name());
            ArrayList arraylist = new ArrayList();
            f.setOrderPayments(arraylist);
            double d1 = com.aadhk.restpos.f.h.b(f.getSubTotal(), y + z, f.getServiceAmt(), f.getDiscountAmt(), D, C);
            f.setAmount(d1);
            f.setTax1Amt(y);
            f.setTax2Amt(z);
            OrderPayment orderpayment = new OrderPayment();
            orderpayment.setOrderId(f.getId());
            orderpayment.setPaymentMethodName(getString(0x7f0902ab));
            orderpayment.setPaymentMethodType(0);
            orderpayment.setPaid(d1);
            orderpayment.setAmount(d1);
            orderpayment.setCashierName(j);
            orderpayment.setPaymentTime(com.aadhk.restpos.f.i.c());
            arraylist.add(orderpayment);
            b.g();
            a a1 = new a(b, a, getString(0x7f0901f0));
            if (android.os.Build.VERSION.SDK_INT >= 11)
            {
                a1.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
                return;
            } else
            {
                a1.execute(null);
                return;
            }
        }
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        h = getResources();
        w = new com.aadhk.restpos.f.l(b);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        q = layoutinflater.inflate(0x7f030073, viewgroup, false);
        c = (Button)q.findViewById(0x7f0b016c);
        c.setOnClickListener(this);
        d = (Button)q.findViewById(0x7f0b016d);
        d.setOnClickListener(this);
        t = (TextView)q.findViewById(0x7f0b016e);
        r = (TextView)q.findViewById(0x7f0b0170);
        s = (TextView)q.findViewById(0x7f0b0171);
        u = (TextView)q.findViewById(0x7f0b016f);
        return q;
    }

    public final void onResume()
    {
        super.onResume();
        f = b.p();
        g = b.r();
        p = k.a(f.getId());
        b.a(p);
        if (f.getSplitType() == 0)
        {
            d.setVisibility(0);
        } else
        {
            d.setVisibility(8);
        }
        a();
        b();
    }
}
