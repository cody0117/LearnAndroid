// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.widget.PopupMenu;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Toast;
import com.aadhk.product.library.a.b;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.b.i;
import com.aadhk.restpos.b.l;
import com.aadhk.restpos.b.m;
import com.aadhk.restpos.b.r;
import com.aadhk.restpos.b.u;
import com.aadhk.restpos.b.w;
import com.aadhk.restpos.bean.Customer;
import com.aadhk.restpos.bean.Item;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.bean.RolePermission;
import com.aadhk.restpos.bean.User;
import com.aadhk.restpos.c.ad;
import com.aadhk.restpos.c.au;
import com.aadhk.restpos.c.ax;
import com.aadhk.restpos.c.bz;
import com.aadhk.restpos.d.bh;
import com.aadhk.restpos.d.cu;
import com.aadhk.restpos.d.q;
import com.aadhk.restpos.e.f;
import com.aadhk.restpos.f.j;
import com.aadhk.restpos.f.k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, ce, cb, cd, 
//            SplitBillActivity, bz, ca

public class TakeOrderActivity extends POSActivity
    implements android.support.v7.widget.PopupMenu.OnMenuItemClickListener
{

    private RolePermission A;
    private RolePermission B;
    private String C;
    private Order D;
    private List E;
    b a;
    private boolean l;
    private boolean m;
    private m n;
    private i o;
    private r p;
    private w q;
    private u r;
    private l s;
    private FragmentManager t;
    private SQLiteDatabase u;
    private f v;
    private List w;
    private POSPrinterSetting x;
    private List y;
    private Customer z;

    public TakeOrderActivity()
    {
        a = new ce(this);
    }

    static Order a(TakeOrderActivity takeorderactivity)
    {
        return takeorderactivity.D;
    }

    static m b(TakeOrderActivity takeorderactivity)
    {
        return takeorderactivity.n;
    }

    static void c(TakeOrderActivity takeorderactivity)
    {
        takeorderactivity.v();
    }

    static String d(TakeOrderActivity takeorderactivity)
    {
        return takeorderactivity.C;
    }

    static w e(TakeOrderActivity takeorderactivity)
    {
        return takeorderactivity.q;
    }

    static List f(TakeOrderActivity takeorderactivity)
    {
        return takeorderactivity.w;
    }

    static List g(TakeOrderActivity takeorderactivity)
    {
        return takeorderactivity.E;
    }

    static f h(TakeOrderActivity takeorderactivity)
    {
        return takeorderactivity.v;
    }

    static POSPrinterSetting i(TakeOrderActivity takeorderactivity)
    {
        return takeorderactivity.x;
    }

    static Customer j(TakeOrderActivity takeorderactivity)
    {
        return takeorderactivity.z;
    }

    private void v()
    {
        bz bz1 = new bz(this, null, s.b(1));
        bz1.setTitle(getString(0x7f09028a));
        bz1.a(new cb(this));
        bz1.show();
    }

    public final void a()
    {
        if (l)
        {
            FragmentTransaction fragmenttransaction1 = t.beginTransaction();
            Bundle bundle1 = new Bundle();
            bundle1.putBoolean("bundleOrdered", true);
            bh bh2 = new bh();
            bh2.setArguments(bundle1);
            fragmenttransaction1.replace(0x7f0b005c, bh2);
            Object obj;
            if (m)
            {
                obj = new q();
            } else
            {
                obj = new com.aadhk.restpos.d.l();
            }
            fragmenttransaction1.replace(0x7f0b005b, ((Fragment) (obj)));
            fragmenttransaction1.commit();
            return;
        } else
        {
            FragmentTransaction fragmenttransaction = t.beginTransaction();
            Bundle bundle = new Bundle();
            bundle.putBoolean("bundleOrdered", true);
            bh bh1 = new bh();
            bh1.setArguments(bundle);
            fragmenttransaction.replace(0x7f0b005b, bh1);
            fragmenttransaction.addToBackStack(null);
            fragmenttransaction.commit();
            return;
        }
    }

    public final void a(long l1)
    {
        Item item = o.d(l1);
        if (item.isWarn())
        {
            Iterator iterator = y.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                OrderItem orderitem = (OrderItem)iterator.next();
                if (orderitem.getItemId() == l1)
                {
                    item.setQty(item.getQty() - orderitem.getNum());
                    if (item.getQty() <= 0)
                    {
                        item.setQty(0);
                    }
                }
            } while (true);
            if (item.getQty() <= item.getWarnQty())
            {
                ax ax1 = new ax(this);
                String s1 = b.getString(0x7f0901f7);
                Object aobj[] = new Object[1];
                aobj[0] = Integer.valueOf(item.getQty());
                ax1.a(String.format(s1, aobj));
                ax1.show();
            }
        }
    }

    public final void a(Order order)
    {
        long l1 = n.a(D, order, C);
        D = n.c(l1);
        Toast.makeText(this, 0x7f090218, 1).show();
        setTitle(D.getTableName());
        FragmentTransaction fragmenttransaction = t.beginTransaction();
        Bundle bundle = new Bundle();
        bundle.putBoolean("bundleOrdered", true);
        bh bh1 = new bh();
        bh1.setArguments(bundle);
        if (l)
        {
            fragmenttransaction.replace(0x7f0b005c, bh1);
            if (m)
            {
                fragmenttransaction.replace(0x7f0b005b, new q());
            } else
            {
                fragmenttransaction.replace(0x7f0b005b, new com.aadhk.restpos.d.l());
            }
        } else
        {
            fragmenttransaction.replace(0x7f0b005b, bh1);
        }
        fragmenttransaction.commit();
    }

    public final void a(List list)
    {
        E = list;
    }

    public final void a(List list, boolean flag)
    {
        c c1 = new c(new cd(this, list, flag));
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            c1.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
            return;
        } else
        {
            c1.execute(null);
            return;
        }
    }

    public final SQLiteDatabase b()
    {
        return u;
    }

    public final void b(List list)
    {
        y = list;
    }

    public final void c()
    {
        if (l)
        {
            FragmentTransaction fragmenttransaction = t.beginTransaction();
            fragmenttransaction.replace(0x7f0b005c, new bh());
            fragmenttransaction.commit();
        }
    }

    public final void d()
    {
        if (l)
        {
            FragmentTransaction fragmenttransaction = t.beginTransaction();
            if (m)
            {
                fragmenttransaction.replace(0x7f0b005b, new q());
            } else
            {
                fragmenttransaction.replace(0x7f0b005b, new com.aadhk.restpos.d.l());
            }
            fragmenttransaction.commit();
        }
    }

    public final void e()
    {
        Order order = new Order();
        order.setTableId(0L);
        order.setStartTime(com.aadhk.restpos.f.i.c());
        order.setPersonNum(1);
        order.setTableName(getResources().getString(0x7f090307));
        order.setWaiterName(C);
        if (TextUtils.isEmpty(c.r()))
        {
            order.setOrderNum(c.q());
        } else
        {
            order.setOrderNum(com.aadhk.restpos.f.j.f(c.r()));
        }
        k.a(this, order, false);
    }

    public final void f()
    {
        if (l)
        {
            Fragment fragment1 = t.findFragmentById(0x7f0b005c);
            if (fragment1 instanceof bh)
            {
                ((bh)fragment1).a(D.getPersonNum());
            }
        } else
        {
            Fragment fragment = t.findFragmentById(0x7f0b005b);
            if (fragment instanceof bh)
            {
                ((bh)fragment).a(D.getPersonNum());
                return;
            }
        }
    }

    public final void g()
    {
        c c1;
label0:
        {
            if (x != null)
            {
                c1 = new c(a);
                if (android.os.Build.VERSION.SDK_INT < 11)
                {
                    break label0;
                }
                c1.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
            }
            return;
        }
        c1.execute(null);
    }

    public void onBackPressed()
    {
        k.c(this);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        m = PreferenceManager.getDefaultSharedPreferences(this).getBoolean("prefOrderStyle", false);
        setContentView(0x7f030020);
        View view = findViewById(0x7f0b005c);
        boolean flag = false;
        if (view != null)
        {
            int i1 = view.getVisibility();
            flag = false;
            if (i1 == 0)
            {
                flag = true;
            }
        }
        l = flag;
        Bundle bundle1 = getIntent().getExtras();
        D = (Order)bundle1.getParcelable("bundleOrder");
        boolean flag1 = bundle1.getBoolean("bundleOrdered");
        z = (Customer)bundle1.getParcelable("bundleCustomer");
        if (bundle != null)
        {
            D = (Order)bundle.getParcelable("bundleOrder");
        }
        if (D == null)
        {
            finish();
        }
        setTitle(D.getTableName());
        v = new f(this);
        A = (RolePermission)f.get(Integer.valueOf(200));
        B = (RolePermission)f.get(Integer.valueOf(201));
        C = d.getAccount();
        u = com.aadhk.restpos.b.f.a().b();
        n = new m(u);
        o = new i(u);
        q = new w(u);
        p = new r(u);
        r = new u(u);
        s = new l(u);
        w = p.c();
        x = p.b(1);
        if (y == null)
        {
            y = new ArrayList();
        }
        t = getSupportFragmentManager();
        FragmentTransaction fragmenttransaction = t.beginTransaction();
        if (l)
        {
            bh bh1 = new bh();
            bh1.setArguments(bundle1);
            fragmenttransaction.replace(0x7f0b005c, bh1);
            if (m)
            {
                fragmenttransaction.replace(0x7f0b005b, new q());
            } else
            {
                fragmenttransaction.replace(0x7f0b005b, new com.aadhk.restpos.d.l());
            }
        } else
        if (flag1)
        {
            bh bh2 = new bh();
            bh2.setArguments(bundle1);
            fragmenttransaction.replace(0x7f0b005b, bh2);
        } else
        if (m)
        {
            fragmenttransaction.replace(0x7f0b005b, new q());
        } else
        {
            fragmenttransaction.replace(0x7f0b005b, new com.aadhk.restpos.d.l());
        }
        fragmenttransaction.commit();
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0f0013, menu);
        if (l)
        {
            menu.removeItem(0x7f0b02a8);
        }
        if (D == null)
        {
            D = (Order)getIntent().getExtras().getParcelable("bundleOrder");
        }
        if (D.getId() == 0L)
        {
            menu.removeItem(0x7f0b02ac);
            menu.removeItem(0x7f0b02aa);
            menu.removeItem(0x7f0b02a9);
            menu.removeItem(0x7f0b02ab);
            menu.removeItem(0x7f0b02ad);
        }
        return super.onCreateOptionsMenu(menu);
    }

    protected void onDestroy()
    {
        com.aadhk.restpos.b.f.a().c();
        super.onDestroy();
    }

    public boolean onMenuItemClick(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f0b029c)
        {
            Intent intent = new Intent();
            Bundle bundle = new Bundle();
            bundle.putShort("bundleSplitType", (short)2);
            bundle.putParcelable("bundleOrder", D);
            intent.putExtras(bundle);
            intent.setClass(this, com/aadhk/restpos/SplitBillActivity);
            startActivity(intent);
            finish();
            return true;
        }
        if (menuitem.getItemId() == 0x7f0b028d)
        {
            Intent intent1 = new Intent();
            Bundle bundle1 = new Bundle();
            bundle1.putShort("bundleSplitType", (short)1);
            bundle1.putParcelable("bundleOrder", D);
            intent1.putExtras(bundle1);
            intent1.setClass(this, com/aadhk/restpos/SplitBillActivity);
            startActivity(intent1);
            finish();
            return true;
        } else
        {
            return false;
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x102002c)
        {
            k.c(this);
            return true;
        }
        if (menuitem.getItemId() == 0x7f0b02a8)
        {
            FragmentTransaction fragmenttransaction1 = t.beginTransaction();
            if (m)
            {
                fragmenttransaction1.replace(0x7f0b005b, new q());
            } else
            {
                fragmenttransaction1.replace(0x7f0b005b, new com.aadhk.restpos.d.l());
            }
            fragmenttransaction1.addToBackStack(null);
            fragmenttransaction1.commit();
            return true;
        }
        if (menuitem.getItemId() == 0x7f0b02ad)
        {
            ad ad1 = new ad(this, (new StringBuilder()).append(D.getPersonNum()).toString());
            ad1.setTitle(0x7f090308);
            ad1.b();
            ad1.a(new com.aadhk.restpos.bz(this));
            ad1.show();
            return true;
        }
        if (menuitem.getItemId() == 0x7f0b02aa)
        {
            if (r.d(D.getId()))
            {
                ax ax3 = new ax(this);
                ax3.a(0x7f0901ea);
                ax3.show();
                return true;
            }
            if (D.getSplitType() == 1)
            {
                Intent intent = new Intent();
                Bundle bundle = new Bundle();
                bundle.putShort("bundleSplitType", (short)1);
                bundle.putParcelable("bundleOrder", D);
                intent.putExtras(bundle);
                intent.setClass(this, com/aadhk/restpos/SplitBillActivity);
                startActivity(intent);
                finish();
                return true;
            }
            if (D.getSplitType() == 2)
            {
                Intent intent1 = new Intent();
                Bundle bundle1 = new Bundle();
                bundle1.putShort("bundleSplitType", (short)2);
                bundle1.putParcelable("bundleOrder", D);
                intent1.putExtras(bundle1);
                intent1.setClass(this, com/aadhk/restpos/SplitBillActivity);
                startActivity(intent1);
                finish();
                return true;
            } else
            {
                PopupMenu popupmenu = new PopupMenu(this, findViewById(0x7f0b02aa));
                popupmenu.setOnMenuItemClickListener(this);
                popupmenu.getMenuInflater().inflate(0x7f0f0011, popupmenu.getMenu());
                popupmenu.show();
                return true;
            }
        }
        if (menuitem.getItemId() == 0x7f0b02ac)
        {
            if (D.getSplitType() == 0)
            {
                FragmentTransaction fragmenttransaction = t.beginTransaction();
                fragmenttransaction.replace(0x7f0b005b, new cu());
                fragmenttransaction.addToBackStack(null);
                fragmenttransaction.commit();
                return true;
            } else
            {
                ax ax2 = new ax(this);
                ax2.a(0x7f0901eb);
                ax2.show();
                return true;
            }
        }
        if (menuitem.getItemId() == 0x7f0b02a9)
        {
            if (D.getSplitType() == 0)
            {
                if (!A.isManagerPermission())
                {
                    v();
                    return true;
                } else
                {
                    au au1 = new au(this);
                    au1.a(new ca(this));
                    au1.show();
                    return true;
                }
            } else
            {
                ax ax1 = new ax(this);
                ax1.a(0x7f0901ec);
                ax1.show();
                return true;
            }
        }
        if (menuitem.getItemId() == 0x7f0b02ab)
        {
            if (!w.isEmpty())
            {
                if (E != null && !E.isEmpty())
                {
                    a(E, true);
                    return true;
                } else
                {
                    Toast.makeText(this, 0x7f0901f4, 1).show();
                    return true;
                }
            } else
            {
                Toast.makeText(this, 0x7f090203, 1).show();
                return true;
            }
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }

    protected void onPause()
    {
        super.onPause();
        c.a("prefSessionStart", System.currentTimeMillis());
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        bundle.putParcelable("bundleOrder", D);
        bundle.putParcelable("bundleCustomer", z);
        super.onSaveInstanceState(bundle);
    }

    public final Order p()
    {
        return D;
    }

    public final List q()
    {
        return y;
    }

    public final Customer r()
    {
        return z;
    }

    public final List s()
    {
        return w;
    }

    public final String t()
    {
        return C;
    }

    public final RolePermission u()
    {
        return B;
    }
}
