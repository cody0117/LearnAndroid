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
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.a.n;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Customer;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.OrderModifier;
import com.aadhk.restpos.bean.OrderPayment;
import com.aadhk.restpos.bean.PaymentMethod;
import com.aadhk.restpos.bean.RolePermission;
import com.aadhk.restpos.c.bl;
import com.aadhk.restpos.c.ds;
import com.aadhk.restpos.c.y;
import com.aadhk.restpos.g.ad;
import com.aadhk.restpos.g.s;
import com.aadhk.restpos.util.m;
import com.aadhk.restpos.util.o;
import com.aadhk.restpos.util.p;
import com.aadhk.restpos.util.q;
import com.aadhk.restpos.util.r;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            ea, ef, dz, ed, 
//            ec, dv, eb, ei, 
//            ee, eh

public final class du extends Fragment
    implements android.view.View.OnClickListener
{

    private Company A;
    private ad B;
    private s C;
    private TakeOrderActivity a;
    private Button b;
    private Button c;
    private ExpandableListView d;
    private Order e;
    private Customer f;
    private String g;
    private String h;
    private List i;
    private View j;
    private TextView k;
    private TextView l;
    private TextView m;
    private TextView n;
    private n o;
    private r p;
    private RolePermission q;
    private double r;
    private double s;
    private double t;
    private double u;
    private double v;
    private double w;
    private boolean x;
    private int y;
    private List z;

    public du()
    {
    }

    static double a(du du1, double d1)
    {
        du1.r = d1;
        return d1;
    }

    static Order a(du du1)
    {
        return du1.e;
    }

    static List a(du du1, List list)
    {
        du1.i = list;
        return list;
    }

    static void a(du du1, OrderItem orderitem)
    {
        if (!du1.a.e().isManagerPermission())
        {
            du1.a(orderitem);
            return;
        } else
        {
            bl bl1 = new bl(du1.a);
            bl1.a(new ea(du1, orderitem));
            bl1.show();
            return;
        }
    }

    private void a(List list)
    {
        r = 0.0D;
        s = 0.0D;
        t = 0.0D;
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
                    double d3 = orderitem.getItemPrice() * (double)orderitem.getQty();
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
                        r = r + com.aadhk.restpos.util.m.a(d3, u, y, x);
                    }
                    if (orderitem.getTax2Id() == 2)
                    {
                        s = s + com.aadhk.restpos.util.m.a(d3, v, y, x);
                    }
                    if (orderitem.getTax3Id() == 3)
                    {
                        t = t + com.aadhk.restpos.util.m.a(d3, w, y, x);
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
        e.setSubTotal(d1);
    }

    static double b(du du1, double d1)
    {
        du1.s = d1;
        return d1;
    }

    static ad b(du du1)
    {
        return du1.B;
    }

    static void b(du du1, OrderItem orderitem)
    {
        (new d(new ef(du1, orderitem, du1.e), du1.a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    static void b(du du1, List list)
    {
        du1.a(list);
    }

    static double c(du du1, double d1)
    {
        du1.t = d1;
        return d1;
    }

    static r c(du du1)
    {
        return du1.p;
    }

    static void c(du du1, OrderItem orderitem)
    {
        y y1 = new y(du1.a, orderitem, du1.y);
        y1.a(new dz(du1, orderitem));
        y1.show();
    }

    static List d(du du1)
    {
        return du1.i;
    }

    static void d(du du1, OrderItem orderitem)
    {
        (new d(new ed(du1, orderitem), du1.a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    static TakeOrderActivity e(du du1)
    {
        return du1.a;
    }

    static void e(du du1, OrderItem orderitem)
    {
        (new d(new ec(du1, orderitem, 3), du1.a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    static Button f(du du1)
    {
        return du1.c;
    }

    static void g(du du1)
    {
        TextView textview = (TextView)du1.j.findViewById(0x7f09015f);
        if (du1.i.size() > 0)
        {
            textview.setVisibility(8);
        } else
        {
            textview.setVisibility(0);
        }
        du1.d = (ExpandableListView)du1.j.findViewById(0x102000a);
        du1.o = new n(du1.a, du1.i);
        du1.d.setAdapter(du1.o);
        du1.d.setGroupIndicator(null);
        du1.d.setOnGroupClickListener(new dv(du1));
        for (int i1 = 0; i1 < du1.i.size(); i1++)
        {
            du1.d.expandGroup(i1);
        }

    }

    static void h(du du1)
    {
        du1.a(du1.i);
        du1.m.setText((new StringBuilder()).append(du1.e.getOrderNum()).toString());
        du1.k.setText(com.aadhk.restpos.util.o.d(du1.e.getOrderTime(), du1.p.d()));
        du1.l.setText((new StringBuilder()).append(du1.e.getPersonNum()).toString());
        du1.n.setText(com.aadhk.restpos.util.p.a(du1.y, du1.e.getSubTotal(), du1.g));
    }

    static RolePermission i(du du1)
    {
        return du1.q;
    }

    static List j(du du1)
    {
        return du1.z;
    }

    static n k(du du1)
    {
        return du1.o;
    }

    static String l(du du1)
    {
        return du1.g;
    }

    static double m(du du1)
    {
        return du1.r;
    }

    static int n(du du1)
    {
        return du1.y;
    }

    static double o(du du1)
    {
        return du1.s;
    }

    static double p(du du1)
    {
        return du1.t;
    }

    static s q(du du1)
    {
        return du1.C;
    }

    public final void a(int i1)
    {
        l.setText((new StringBuilder()).append(i1).toString());
    }

    protected final void a(OrderItem orderitem)
    {
        List list = B.b();
        ds ds1 = new ds(a, list, orderitem);
        ds1.setTitle(0x7f08012f);
        ds1.a(new eb(this, orderitem));
        ds1.show();
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        B = a.c();
        C = a.d();
        A = a.v();
        g = A.getCurrencySign();
        x = A.isItemPriceIncludeTax();
        y = A.getDecimalPlace();
        u = A.getTax1();
        v = A.getTax2();
        w = A.getTax3();
        h = a.x();
        q = a.y();
        z = a.n();
    }

    public final void onAttach(Activity activity)
    {
        super.onAttach(activity);
        a = (TakeOrderActivity)activity;
    }

    public final void onClick(View view)
    {
        if (view != b) goto _L2; else goto _L1
_L1:
        if (e.getSplitType() != 0) goto _L4; else goto _L3
_L3:
        e.setTax1Amt(r);
        e.setTax2Amt(s);
        e.setTax3Amt(t);
        com.aadhk.restpos.util.q.a(a, e, f);
        a.finish();
_L6:
        return;
_L4:
        (new d(new ei(this, (byte)0), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
        return;
_L2:
        if (view == c)
        {
            e.setEndTime(com.aadhk.restpos.util.o.c());
            e.setCashierName(h);
            e.setTax1Name(A.getTax1Name());
            e.setTax2Name(A.getTax2Name());
            e.setTax3Name(A.getTax3Name());
            ArrayList arraylist = new ArrayList();
            e.setOrderPayments(arraylist);
            double d1 = com.aadhk.restpos.util.m.a(e.getSubTotal(), r + s + t, e.getServiceAmt(), e.getGratuity(), e.getDiscountAmt(), y, x);
            e.setAmount(d1);
            e.setTax1Amt(r);
            e.setTax2Amt(s);
            e.setTax3Amt(t);
            OrderPayment orderpayment = new OrderPayment();
            orderpayment.setOrderId(e.getId());
            Iterator iterator = ((POSApp)a.getApplicationContext()).i().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                PaymentMethod paymentmethod = (PaymentMethod)iterator.next();
                if (paymentmethod.isBeDefault())
                {
                    orderpayment.setPaymentMethodName(paymentmethod.getName());
                    orderpayment.setPaymentMethodType(paymentmethod.getType());
                }
            } while (true);
            orderpayment.setPaid(d1);
            orderpayment.setAmount(d1);
            orderpayment.setCashierName(h);
            orderpayment.setPaymentTime(com.aadhk.restpos.util.o.c());
            arraylist.add(orderpayment);
            a.j();
            (new d(new ee(this, (byte)0), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        p = a.A();
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        j = layoutinflater.inflate(0x7f03008a, viewgroup, false);
        b = (Button)j.findViewById(0x7f0901bb);
        b.setOnClickListener(this);
        c = (Button)j.findViewById(0x7f0901bc);
        c.setOnClickListener(this);
        m = (TextView)j.findViewById(0x7f0901bd);
        k = (TextView)j.findViewById(0x7f0901bf);
        l = (TextView)j.findViewById(0x7f0901c0);
        n = (TextView)j.findViewById(0x7f0901be);
        return j;
    }

    public final void onResume()
    {
        super.onResume();
        e = a.k();
        f = a.m();
        (new d(new eh(this, (byte)0), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
