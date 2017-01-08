// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.PopupMenu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.a.e;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.Customer;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.bean.RolePermission;
import com.aadhk.restpos.bean.User;
import com.aadhk.restpos.c.ak;
import com.aadhk.restpos.c.ap;
import com.aadhk.restpos.c.bl;
import com.aadhk.restpos.c.bo;
import com.aadhk.restpos.c.du;
import com.aadhk.restpos.d.ag;
import com.aadhk.restpos.d.al;
import com.aadhk.restpos.d.dr;
import com.aadhk.restpos.e.g;
import com.aadhk.restpos.g.ad;
import com.aadhk.restpos.g.h;
import com.aadhk.restpos.g.s;
import com.aadhk.restpos.util.o;
import com.aadhk.restpos.util.q;
import com.aadhk.restpos.util.r;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, dz, dt, ed, 
//            du, dv, dx, dw, 
//            eb, dy, ea, ds, 
//            dr, ef, POSApp, SplitBillActivity

public class TakeOrderActivity extends POSActivity
    implements android.support.v7.widget.PopupMenu.OnMenuItemClickListener, android.view.View.OnClickListener
{

    private Bundle A;
    private List B;
    private int C;
    private boolean D;
    private al E;
    private ag F;
    private ad G;
    private s H;
    private h I;
    private Button J;
    private Button K;
    private Button L;
    private Button M;
    private Button N;
    private Button O;
    private Button P;
    private Button Q;
    private Button R;
    private c S;
    private boolean a;
    private boolean o;
    private FragmentManager p;
    private dr q;
    private g r;
    private List s;
    private POSPrinterSetting t;
    private List u;
    private Customer v;
    private RolePermission w;
    private RolePermission x;
    private String y;
    private Order z;

    public TakeOrderActivity()
    {
        S = new dz(this);
    }

    private void B()
    {
        Q.setVisibility(0);
        K.setVisibility(0);
        J.setVisibility(8);
        L.setVisibility(8);
        M.setVisibility(8);
        N.setVisibility(8);
        O.setVisibility(8);
        P.setVisibility(8);
        R.setVisibility(8);
    }

    private void C()
    {
        ak ak1 = new ak(this, (new StringBuilder()).append(z.getPersonNum()).toString());
        ak1.setTitle(0x7f080368);
        ak1.b();
        ak1.a(new dt(this));
        ak1.show();
    }

    private void D()
    {
        if (u.size() == 0)
        {
            if (z.getSplitType() == 0)
            {
                (new d(new ed(this, (byte)0), this, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
                return;
            } else
            {
                bo bo2 = new bo(this);
                bo2.a(0x7f08022a);
                bo2.show();
                return;
            }
        } else
        {
            bo bo1 = new bo(this);
            bo1.a(0x7f080264);
            bo1.setOnCancelListener(new com.aadhk.restpos.du(this));
            bo1.show();
            return;
        }
    }

    private void E()
    {
        if (z.getSplitType() == 0)
        {
            if (!w.isManagerPermission())
            {
                G();
                return;
            } else
            {
                bl bl1 = new bl(this);
                bl1.a(new dv(this));
                bl1.show();
                return;
            }
        } else
        {
            bo bo1 = new bo(this);
            bo1.a(0x7f08022b);
            bo1.show();
            return;
        }
    }

    private void F()
    {
        if (!s.isEmpty())
        {
            if (B != null && !B.isEmpty())
            {
                e e1 = new e(new dx(this, B));
                if (android.os.Build.VERSION.SDK_INT >= 11)
                {
                    e1.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
                    return;
                } else
                {
                    e1.execute(null);
                    return;
                }
            } else
            {
                Toast.makeText(this, 0x7f080231, 1).show();
                return;
            }
        } else
        {
            Toast.makeText(this, 0x7f080242, 1).show();
            return;
        }
    }

    private void G()
    {
        du du1 = new du(this, G.b());
        du1.setTitle(0x7f0800cf);
        du1.a(new dw(this));
        du1.show();
    }

    static Order a(TakeOrderActivity takeorderactivity, Order order)
    {
        takeorderactivity.z = order;
        return order;
    }

    static ag a(TakeOrderActivity takeorderactivity, ag ag1)
    {
        takeorderactivity.F = ag1;
        return ag1;
    }

    static al a(TakeOrderActivity takeorderactivity, al al1)
    {
        takeorderactivity.E = al1;
        return al1;
    }

    static ad a(TakeOrderActivity takeorderactivity)
    {
        return takeorderactivity.G;
    }

    static Order b(TakeOrderActivity takeorderactivity)
    {
        return takeorderactivity.z;
    }

    static void c(TakeOrderActivity takeorderactivity)
    {
        takeorderactivity.G();
    }

    static String d(TakeOrderActivity takeorderactivity)
    {
        return takeorderactivity.y;
    }

    static List e(TakeOrderActivity takeorderactivity)
    {
        return takeorderactivity.s;
    }

    static List f(TakeOrderActivity takeorderactivity)
    {
        return takeorderactivity.B;
    }

    static g g(TakeOrderActivity takeorderactivity)
    {
        return takeorderactivity.r;
    }

    public static void g()
    {
    }

    static FragmentManager h(TakeOrderActivity takeorderactivity)
    {
        return takeorderactivity.p;
    }

    static boolean i(TakeOrderActivity takeorderactivity)
    {
        return takeorderactivity.a;
    }

    static boolean j(TakeOrderActivity takeorderactivity)
    {
        return takeorderactivity.o;
    }

    static al k(TakeOrderActivity takeorderactivity)
    {
        return takeorderactivity.E;
    }

    static ag l(TakeOrderActivity takeorderactivity)
    {
        return takeorderactivity.F;
    }

    static POSPrinterSetting m(TakeOrderActivity takeorderactivity)
    {
        return takeorderactivity.t;
    }

    static Customer n(TakeOrderActivity takeorderactivity)
    {
        return takeorderactivity.v;
    }

    static List o(TakeOrderActivity takeorderactivity)
    {
        HashMap hashmap = new HashMap();
        ArrayList arraylist = new ArrayList();
        int i1 = 0;
        while (i1 < takeorderactivity.B.size()) 
        {
            OrderItem orderitem = (OrderItem)takeorderactivity.B.get(i1);
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

    public final r A()
    {
        return c;
    }

    public final Button a()
    {
        return Q;
    }

    public final void a(View view)
    {
        PopupMenu popupmenu = new PopupMenu(this, view);
        popupmenu.setOnMenuItemClickListener(this);
        popupmenu.getMenuInflater().inflate(0x7f0f0016, popupmenu.getMenu());
        popupmenu.show();
    }

    public final void a(Order order)
    {
        (new d(new eb(this, order), this, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    public final void a(OrderItem orderitem)
    {
label0:
        {
            if (a)
            {
                if (!o)
                {
                    break label0;
                }
                E.a(orderitem);
            }
            return;
        }
        F.a(orderitem);
    }

    public final void a(List list)
    {
        B = list;
    }

    public final void a(List list, boolean flag)
    {
        (new e(new dy(this, list, flag))).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    public final void b()
    {
        if (a)
        {
            FragmentTransaction fragmenttransaction1 = p.beginTransaction();
            Bundle bundle1 = new Bundle();
            bundle1.putBoolean("bundleOrdered", true);
            dr dr2 = new dr();
            dr2.setArguments(bundle1);
            fragmenttransaction1.replace(0x7f09005f, dr2);
            if (o)
            {
                E = new al();
                fragmenttransaction1.replace(0x7f090060, E);
            } else
            {
                F = new ag();
                fragmenttransaction1.replace(0x7f090060, F);
            }
            fragmenttransaction1.commit();
            return;
        } else
        {
            FragmentTransaction fragmenttransaction = p.beginTransaction();
            Bundle bundle = new Bundle();
            bundle.putBoolean("bundleOrdered", true);
            dr dr1 = new dr();
            dr1.setArguments(bundle);
            fragmenttransaction.replace(0x7f090060, dr1);
            fragmenttransaction.addToBackStack(null);
            fragmenttransaction.commit();
            return;
        }
    }

    public final void b(Order order)
    {
        z = order;
    }

    public final void b(OrderItem orderitem)
    {
        u.add(orderitem);
    }

    public final void b(List list)
    {
        u = list;
    }

    public final void b(boolean flag)
    {
label0:
        {
            D = flag;
            if (!a)
            {
                if (!flag)
                {
                    break label0;
                }
                J.setVisibility(0);
                K.setVisibility(0);
                M.setVisibility(0);
                L.setVisibility(8);
                N.setVisibility(8);
                O.setVisibility(8);
                P.setVisibility(8);
                R.setVisibility(0);
                Q.setVisibility(8);
                if (!w.isShow())
                {
                    L.setVisibility(8);
                }
            }
            return;
        }
        K.setVisibility(0);
        J.setVisibility(0);
        L.setVisibility(8);
        M.setVisibility(8);
        N.setVisibility(8);
        O.setVisibility(8);
        P.setVisibility(8);
        Q.setVisibility(8);
        R.setVisibility(8);
    }

    public final ad c()
    {
        return G;
    }

    public final s d()
    {
        return H;
    }

    public final RolePermission e()
    {
        return w;
    }

    public final void f()
    {
        if (a)
        {
            FragmentTransaction fragmenttransaction = p.beginTransaction();
            q = new dr();
            fragmenttransaction.replace(0x7f09005f, q);
            fragmenttransaction.addToBackStack(null);
            fragmenttransaction.commit();
        }
    }

    public final void h()
    {
        Order order = new Order();
        order.setTableId(0L);
        order.setOrderTime(com.aadhk.restpos.util.o.c());
        order.setPersonNum(1);
        order.setTableName(getString(0x7f080367));
        order.setWaiterName(y);
        com.aadhk.restpos.util.q.a(this, order, null, false);
        finish();
    }

    public final void i()
    {
        if (a)
        {
            Fragment fragment1 = p.findFragmentById(0x7f09005f);
            if (fragment1 instanceof dr)
            {
                ((dr)fragment1).a(z.getPersonNum());
            }
        } else
        {
            Fragment fragment = p.findFragmentById(0x7f090060);
            if (fragment instanceof dr)
            {
                ((dr)fragment).a(z.getPersonNum());
                return;
            }
        }
    }

    public final void j()
    {
        if (t.isEnable())
        {
            (new e(S)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
        }
    }

    public final Order k()
    {
        return z;
    }

    public final List l()
    {
        return u;
    }

    public final Customer m()
    {
        return v;
    }

    public final List n()
    {
        return s;
    }

    public void onBackPressed()
    {
        if (C == 1 && z.getId() == 0L)
        {
            com.aadhk.restpos.c.d d2 = new com.aadhk.restpos.c.d(this);
            d2.setTitle(0x7f080243);
            d2.a(new ea(this));
            d2.show();
            return;
        }
        if (u.size() == 0)
        {
            com.aadhk.restpos.util.q.b(this);
            return;
        } else
        {
            com.aadhk.restpos.c.d d1 = new com.aadhk.restpos.c.d(this);
            d1.setTitle(0x7f080243);
            d1.a(new ds(this));
            d1.show();
            return;
        }
    }

    public void onClick(View view)
    {
        if (view == K)
        {
            ap ap1 = new ap(this, z.getKitchenRemark());
            ap1.setTitle(0x7f080265);
            ap1.a(new com.aadhk.restpos.dr(this));
            ap1.show();
        } else
        {
            if (view == J)
            {
                FragmentTransaction fragmenttransaction = p.beginTransaction();
                if (o)
                {
                    E = new al();
                    fragmenttransaction.replace(0x7f090060, E);
                } else
                {
                    F = new ag();
                    fragmenttransaction.replace(0x7f090060, F);
                }
                fragmenttransaction.addToBackStack(null);
                fragmenttransaction.commit();
                B();
                return;
            }
            if (view == P)
            {
                C();
                return;
            }
            if (view == M)
            {
                (new d(new ef(this, z.getId()), this, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
                return;
            }
            if (view == O)
            {
                D();
                return;
            }
            if (view == L)
            {
                E();
                return;
            }
            if (view == N)
            {
                F();
                return;
            }
            if (view == Q)
            {
                if (o)
                {
                    E.a();
                    return;
                } else
                {
                    F.a();
                    return;
                }
            }
            if (view == R)
            {
                PopupMenu popupmenu = new PopupMenu(this, R);
                popupmenu.setOnMenuItemClickListener(this);
                popupmenu.getMenuInflater().inflate(0x7f0f0018, popupmenu.getMenu());
                popupmenu.show();
                return;
            }
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        getSupportActionBar().hide();
        setContentView(0x7f03002a);
        o = PreferenceManager.getDefaultSharedPreferences(this).getBoolean("prefOrderStyle", false);
        View view = findViewById(0x7f09005f);
        boolean flag;
        FragmentTransaction fragmenttransaction;
        if (view != null && view.getVisibility() == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
        A = getIntent().getExtras();
        z = (Order)A.getParcelable("bundleOrder");
        D = A.getBoolean("bundleOrdered");
        v = (Customer)A.getParcelable("bundleCustomer");
        C = A.getInt("bundleOrderType", 0);
        if (bundle != null)
        {
            z = (Order)bundle.getParcelable("bundleOrder");
            v = (Customer)bundle.getParcelable("bundleCustomer");
        }
        if (z == null)
        {
            finish();
        }
        r = new g(this);
        w = (RolePermission)f.get(Integer.valueOf(200));
        x = (RolePermission)f.get(Integer.valueOf(201));
        y = d.getAccount();
        G = new ad(this);
        H = new s(this);
        I = new h(this);
        s = ((POSApp)getApplicationContext()).m();
        t = ((POSApp)getApplicationContext()).k();
        if (u == null)
        {
            u = new ArrayList();
        }
        J = (Button)findViewById(0x7f090087);
        K = (Button)findViewById(0x7f090084);
        L = (Button)findViewById(0x7f090085);
        M = (Button)findViewById(0x7f090086);
        N = (Button)findViewById(0x7f090089);
        O = (Button)findViewById(0x7f090088);
        P = (Button)findViewById(0x7f09008a);
        Q = (Button)findViewById(0x7f09008b);
        R = (Button)findViewById(0x7f090083);
        J.setOnClickListener(this);
        K.setOnClickListener(this);
        L.setOnClickListener(this);
        M.setOnClickListener(this);
        N.setOnClickListener(this);
        O.setOnClickListener(this);
        P.setOnClickListener(this);
        Q.setOnClickListener(this);
        R.setOnClickListener(this);
        p = getSupportFragmentManager();
        fragmenttransaction = p.beginTransaction();
        if (a)
        {
            dr dr1 = new dr();
            dr1.setArguments(A);
            fragmenttransaction.replace(0x7f09005f, dr1);
            if (o)
            {
                E = new al();
                fragmenttransaction.replace(0x7f090060, E);
            } else
            {
                F = new ag();
                fragmenttransaction.replace(0x7f090060, F);
            }
            J.setVisibility(8);
            R.setVisibility(8);
        } else
        if (D)
        {
            dr dr2 = new dr();
            dr2.setArguments(A);
            fragmenttransaction.replace(0x7f090060, dr2);
            b(D);
        } else
        {
            if (o)
            {
                E = new al();
                fragmenttransaction.replace(0x7f090060, E);
            } else
            {
                F = new ag();
                fragmenttransaction.replace(0x7f090060, F);
            }
            B();
        }
        fragmenttransaction.commit();
    }

    protected void onDestroy()
    {
        ad _tmp = G;
        com.aadhk.restpos.b.f.a().c();
        s _tmp1 = H;
        com.aadhk.restpos.b.f.a().c();
        super.onDestroy();
    }

    public boolean onMenuItemClick(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f090320)
        {
            Intent intent = new Intent();
            Bundle bundle = new Bundle();
            bundle.putShort("bundleSplitType", (short)2);
            bundle.putParcelable("bundleOrder", z);
            intent.putExtras(bundle);
            intent.setClass(this, com/aadhk/restpos/SplitBillActivity);
            startActivity(intent);
            finish();
            return true;
        }
        if (menuitem.getItemId() == 0x7f09030e)
        {
            Intent intent1 = new Intent();
            Bundle bundle1 = new Bundle();
            bundle1.putShort("bundleSplitType", (short)1);
            bundle1.putParcelable("bundleOrder", z);
            intent1.putExtras(bundle1);
            intent1.setClass(this, com/aadhk/restpos/SplitBillActivity);
            startActivity(intent1);
            finish();
            return true;
        }
        if (menuitem.getItemId() != 0x7f090089) goto _L2; else goto _L1
_L1:
        F();
_L4:
        return false;
_L2:
        if (menuitem.getItemId() == 0x7f09008a)
        {
            C();
        } else
        if (menuitem.getItemId() == 0x7f090088)
        {
            D();
        } else
        if (menuitem.getItemId() == 0x7f090085)
        {
            E();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected void onPause()
    {
        super.onPause();
        c.a("prefSessionStart", System.currentTimeMillis());
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        bundle.putParcelable("bundleOrder", z);
        bundle.putParcelable("bundleCustomer", v);
        super.onSaveInstanceState(bundle);
    }

    public final String x()
    {
        return y;
    }

    public final RolePermission y()
    {
        return x;
    }

    public final h z()
    {
        return I;
    }
}
