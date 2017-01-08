// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.PopupMenu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Customer;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.RolePermission;
import com.aadhk.restpos.bean.ServiceFee;
import com.aadhk.restpos.bean.User;
import com.aadhk.restpos.d.ey;
import com.aadhk.restpos.d.fp;
import com.aadhk.restpos.g.s;
import com.aadhk.restpos.g.z;
import com.aadhk.restpos.util.o;
import com.aadhk.restpos.util.q;
import com.aadhk.restpos.util.r;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, POSApp, CustomerActivity, ch

public class PaymentActivity extends POSActivity
    implements android.support.v7.widget.PopupMenu.OnMenuItemClickListener, android.view.View.OnClickListener
{

    private Button A;
    private Button B;
    private Button C;
    private Button D;
    private Button E;
    private Button F;
    private s G;
    private z H;
    private RolePermission I;
    private RolePermission J;
    private RolePermission K;
    private boolean a;
    private FragmentManager o;
    private fp p;
    private ey q;
    private Order r;
    private Order s;
    private List t;
    private List u;
    private boolean v;
    private int w;
    private Customer x;
    private Button y;
    private Button z;

    public PaymentActivity()
    {
    }

    static FragmentManager a(PaymentActivity paymentactivity, FragmentManager fragmentmanager)
    {
        paymentactivity.o = fragmentmanager;
        return fragmentmanager;
    }

    static Order a(PaymentActivity paymentactivity)
    {
        return paymentactivity.r;
    }

    static ey a(PaymentActivity paymentactivity, ey ey1)
    {
        paymentactivity.q = ey1;
        return ey1;
    }

    static fp a(PaymentActivity paymentactivity, fp fp1)
    {
        paymentactivity.p = fp1;
        return fp1;
    }

    static List a(PaymentActivity paymentactivity, List list)
    {
        paymentactivity.t = list;
        return list;
    }

    static s b(PaymentActivity paymentactivity)
    {
        return paymentactivity.G;
    }

    static List c(PaymentActivity paymentactivity)
    {
        HashMap hashmap = new HashMap();
        ArrayList arraylist = new ArrayList();
        int i1 = 0;
        while (i1 < paymentactivity.t.size()) 
        {
            OrderItem orderitem = (OrderItem)paymentactivity.t.get(i1);
            String s1 = (new StringBuilder()).append(orderitem.getItemId()).append(orderitem.getItemPrice()).toString();
            if (!orderitem.getOrderModifiers().isEmpty())
            {
                s1 = (new StringBuilder()).append(s1).append(i1).toString();
            }
            ArrayList arraylist1;
            Iterator iterator;
            String s2;
            OrderItem orderitem1;
            if (orderitem.getStatus() == 1)
            {
                s2 = (new StringBuilder()).append(s1).append("C").toString();
            } else
            {
                s2 = s1;
            }
            orderitem1 = (OrderItem)hashmap.get(s2);
            if (orderitem1 == null)
            {
                hashmap.put(s2, orderitem);
                arraylist.add(s2);
            } else
            {
                orderitem1.setQty(orderitem.getQty() + orderitem1.getQty());
            }
            i1++;
        }
        arraylist1 = new ArrayList();
        for (iterator = arraylist.iterator(); iterator.hasNext(); arraylist1.add(hashmap.get((String)iterator.next()))) { }
        return arraylist1;
    }

    static List d(PaymentActivity paymentactivity)
    {
        return paymentactivity.t;
    }

    static FragmentManager e(PaymentActivity paymentactivity)
    {
        return paymentactivity.o;
    }

    static ey f(PaymentActivity paymentactivity)
    {
        return paymentactivity.q;
    }

    static boolean g(PaymentActivity paymentactivity)
    {
        return paymentactivity.a;
    }

    static fp h(PaymentActivity paymentactivity)
    {
        return paymentactivity.p;
    }

    public final void a()
    {
        Iterator iterator;
        r = s.clone();
        r.setEndTime(com.aadhk.restpos.util.o.c());
        r.setCashierName(d.getAccount());
        r.setOrderPayments(new ArrayList());
        r.setTax1Name(e.getTax1Name());
        r.setTax2Name(e.getTax2Name());
        r.setTax3Name(e.getTax3Name());
        u = new ArrayList();
        u.add(0, new ServiceFee());
        u.addAll(((POSApp)getApplicationContext()).g());
        iterator = u.iterator();
_L4:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        ServiceFee servicefee = (ServiceFee)iterator.next();
        if (servicefee.getId() != w) goto _L4; else goto _L3
_L3:
        if (r.getTableId() == 0L || r.getTableId() == -2L)
        {
            v = e.isIncludeServiceFeeTakeOut();
            w = e.getServiceFeeIdTakeOut();
        } else
        if (r.getTableId() == -1L)
        {
            v = e.isIncludeServiceFeeDelivery();
            w = e.getServiceFeeIdDelivery();
        } else
        {
            v = e.isIncludeServiceFeeDineIn();
            w = e.getServiceFeeIdDineIn();
        }
        if (v && servicefee != null)
        {
            if (servicefee.isPercentage())
            {
                Order order = r;
                double d1 = r.getSubTotal();
                double d2 = r.getDiscountAmt();
                double d3 = r.getTax1Amt() + r.getTax2Amt() + r.getTax3Amt();
                double d4 = servicefee.getAmount();
                int i1 = j;
                boolean flag = e.isItemPriceIncludeTax();
                boolean flag1 = e.isServiceAfterTax();
                double d5;
                if (flag || !flag1)
                {
                    d5 = (new BigDecimal(d1)).subtract(new BigDecimal(d2)).multiply(new BigDecimal(d4)).divide(new BigDecimal(100), i1, 4).doubleValue();
                } else
                {
                    d5 = (new BigDecimal(d1)).subtract(new BigDecimal(d2)).add(new BigDecimal(d3)).multiply(new BigDecimal(d4)).divide(new BigDecimal(100), i1, 4).doubleValue();
                }
                order.setServiceAmt(d5);
                return;
            } else
            {
                r.setServiceAmt(servicefee.getAmount());
                return;
            }
        } else
        {
            r.setServiceAmt(0.0D);
            return;
        }
_L2:
        servicefee = null;
        if (true) goto _L3; else goto _L5
_L5:
    }

    public final void a(Customer customer)
    {
        x = customer;
    }

    public final Button b()
    {
        return C;
    }

    public final void c()
    {
        Intent intent = new Intent(this, com/aadhk/restpos/CustomerActivity);
        Bundle bundle = new Bundle();
        bundle.putString("actionType", "contextPay");
        intent.putExtras(bundle);
        startActivityForResult(intent, 6);
    }

    public final void d()
    {
        if (a)
        {
            Fragment fragment = o.findFragmentById(0x7f09005f);
            if (fragment instanceof fp)
            {
                ((fp)fragment).b();
            }
        }
    }

    public final void e()
    {
        if (a)
        {
            Fragment fragment = o.findFragmentById(0x7f09005f);
            if (fragment instanceof fp)
            {
                ((fp)fragment).a();
            }
        }
    }

    public final void f()
    {
        Order order = new Order();
        order.setTableId(0L);
        order.setOrderTime(com.aadhk.restpos.util.o.c());
        order.setPersonNum(1);
        order.setTableName(getString(0x7f080367));
        order.setWaiterName(d.getAccount());
        com.aadhk.restpos.util.q.a(this, order, null, false);
        finish();
    }

    public final List g()
    {
        return u;
    }

    public final Order h()
    {
        return r;
    }

    public final RolePermission i()
    {
        return I;
    }

    public final RolePermission j()
    {
        return J;
    }

    public final RolePermission k()
    {
        return K;
    }

    public final List l()
    {
        return t;
    }

    public final Customer m()
    {
        return x;
    }

    public final String n()
    {
        return d.getAccount();
    }

    public void onActivityResult(int i1, int j1, Intent intent)
    {
        if (j1 == -1 && i1 == 6)
        {
            x = (Customer)intent.getExtras().getParcelable("bundleCustomer");
            Fragment fragment = o.findFragmentById(0x7f09005f);
            if (fragment != null)
            {
                fragment.onActivityResult(i1, j1, intent);
            }
            Fragment fragment1 = o.findFragmentById(0x7f090060);
            if (fragment1 != null)
            {
                fragment1.onActivityResult(i1, j1, intent);
            }
        }
    }

    public void onBackPressed()
    {
        com.aadhk.restpos.util.q.a(this, s, null, true);
        finish();
    }

    public void onClick(View view)
    {
        if (view == y)
        {
            q.c();
        } else
        {
            if (view == z)
            {
                q.d();
                return;
            }
            if (view == A)
            {
                q.e();
                return;
            }
            if (view == B)
            {
                q.f();
                return;
            }
            if (view == C)
            {
                c();
                return;
            }
            if (view == D)
            {
                q.b();
                return;
            }
            if (view == E)
            {
                q.a();
                return;
            }
            if (view == F)
            {
                PopupMenu popupmenu = new PopupMenu(this, F);
                popupmenu.setOnMenuItemClickListener(this);
                popupmenu.getMenuInflater().inflate(0x7f0f000f, popupmenu.getMenu());
                popupmenu.show();
                return;
            }
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        getSupportActionBar().hide();
        setContentView(0x7f030021);
        View view = findViewById(0x7f09005f);
        boolean flag;
        Bundle bundle1;
        if (view != null && view.getVisibility() == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
        y = (Button)findViewById(0x7f09019a);
        z = (Button)findViewById(0x7f09019b);
        A = (Button)findViewById(0x7f09019c);
        B = (Button)findViewById(0x7f09019d);
        C = (Button)findViewById(0x7f09019e);
        D = (Button)findViewById(0x7f09019f);
        E = (Button)findViewById(0x7f0901a0);
        F = (Button)findViewById(0x7f090083);
        y.setOnClickListener(this);
        z.setOnClickListener(this);
        A.setOnClickListener(this);
        B.setOnClickListener(this);
        C.setOnClickListener(this);
        D.setOnClickListener(this);
        E.setOnClickListener(this);
        F.setOnClickListener(this);
        C.setVisibility(8);
        if (!a)
        {
            z.setVisibility(8);
            D.setVisibility(8);
            E.setVisibility(8);
            F.setVisibility(0);
        }
        bundle1 = getIntent().getExtras();
        s = (Order)bundle1.getParcelable("bundleOrder");
        x = (Customer)bundle1.getParcelable("bundleCustomer");
        I = (RolePermission)f.get(Integer.valueOf(100));
        J = (RolePermission)f.get(Integer.valueOf(102));
        K = (RolePermission)f.get(Integer.valueOf(101));
        if (s == null)
        {
            com.aadhk.restpos.util.q.b(this);
        }
        G = new s(this);
        H = new z(this);
        if (!I.isShow())
        {
            B.setEnabled(false);
        }
        if (!J.isShow())
        {
            A.setEnabled(false);
        }
        if (!K.isShow())
        {
            z.setEnabled(false);
            y.setEnabled(false);
        }
        a();
        if (r.getSubTotal() == 0.0D)
        {
            B.setEnabled(false);
            z.setEnabled(false);
            A.setEnabled(false);
            y.setEnabled(false);
        }
        (new d(new ch(this, (byte)0), this, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    public void onDestroy()
    {
        s _tmp = G;
        com.aadhk.restpos.b.f.a().c();
        z _tmp1 = H;
        com.aadhk.restpos.b.f.a().c();
        super.onDestroy();
    }

    public boolean onMenuItemClick(MenuItem menuitem)
    {
        if (menuitem.getItemId() != 0x7f09019c) goto _L2; else goto _L1
_L1:
        q.d();
_L4:
        return true;
_L2:
        if (menuitem.getItemId() == 0x7f090309)
        {
            c();
        } else
        if (menuitem.getItemId() == 0x7f09019f)
        {
            q.b();
        } else
        if (menuitem.getItemId() == 0x7f0901a0)
        {
            q.a();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected void onPause()
    {
        super.onPause();
        c.a("prefSessionStart", System.currentTimeMillis());
    }

    public final s x()
    {
        return G;
    }

    public final r y()
    {
        return c;
    }
}
