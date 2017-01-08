// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.Intent;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.n;
import com.aadhk.restpos.bean.Customer;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.User;
import com.aadhk.restpos.d.cd;
import com.aadhk.restpos.d.ct;
import com.aadhk.restpos.f.i;
import com.aadhk.restpos.f.j;
import com.aadhk.restpos.f.k;
import com.aadhk.restpos.f.l;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, CustomerActivity

public class PaymentActivity extends POSActivity
{

    private boolean a;
    private FragmentManager l;
    private SQLiteDatabase m;
    private List n;
    private Order o;
    private Order p;
    private Customer q;
    private String r;

    public PaymentActivity()
    {
    }

    public final void a()
    {
        Intent intent = new Intent(this, com/aadhk/restpos/CustomerActivity);
        Bundle bundle = new Bundle();
        bundle.putString("actionType", "contextPay");
        intent.putExtras(bundle);
        startActivityForResult(intent, 6);
    }

    public final void a(Customer customer)
    {
        q = customer;
    }

    public final void b()
    {
        if (a)
        {
            Fragment fragment = l.findFragmentById(0x7f0b005c);
            if (fragment instanceof ct)
            {
                ((ct)fragment).b();
            }
        }
    }

    public final void c()
    {
        if (a)
        {
            Fragment fragment = l.findFragmentById(0x7f0b005c);
            if (fragment instanceof ct)
            {
                ((ct)fragment).a();
            }
        }
    }

    public final void d()
    {
        Order order = new Order();
        order.setTableId(0L);
        order.setStartTime(i.c());
        order.setPersonNum(1);
        order.setTableName(getResources().getString(0x7f090307));
        order.setWaiterName(d.getAccount());
        if (TextUtils.isEmpty(c.r()))
        {
            order.setOrderNum(c.q());
        } else
        {
            order.setOrderNum(j.f(c.r()));
        }
        k.a(this, order, false);
    }

    public final Order e()
    {
        return o;
    }

    public final List f()
    {
        return n;
    }

    public final Customer g()
    {
        return q;
    }

    public void onActivityResult(int i1, int j1, Intent intent)
    {
        if (j1 == -1 && i1 == 6)
        {
            q = (Customer)intent.getExtras().getParcelable("bundleCustomer");
            Fragment fragment = l.findFragmentById(0x7f0b005c);
            if (fragment != null)
            {
                fragment.onActivityResult(i1, j1, intent);
            }
            Fragment fragment1 = l.findFragmentById(0x7f0b005b);
            if (fragment1 != null)
            {
                fragment1.onActivityResult(i1, j1, intent);
            }
        }
    }

    public void onBackPressed()
    {
        k.a(this, p, true);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030020);
        View view = findViewById(0x7f0b005c);
        boolean flag;
        Bundle bundle1;
        n n1;
        FragmentTransaction fragmenttransaction;
        if (view != null && view.getVisibility() == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
        bundle1 = getIntent().getExtras();
        o = (Order)bundle1.getParcelable("bundleOrderClone");
        p = (Order)bundle1.getParcelable("bundleOrder");
        q = (Customer)bundle1.getParcelable("bundleCustomer");
        if (o == null)
        {
            finish();
            k.c(this);
        }
        setTitle(o.getTableName());
        r = d.getAccount();
        m = com.aadhk.restpos.b.f.a().b();
        n1 = new n(m);
        if (o.getSplitType() == 2)
        {
            n = n1.b(o.getId(), o.getBillId());
        } else
        if (c.l())
        {
            n = n1.b(o.getId());
        } else
        {
            n = n1.a(o.getId());
        }
        l = getSupportFragmentManager();
        fragmenttransaction = l.beginTransaction();
        fragmenttransaction.replace(0x7f0b005b, new cd());
        if (a)
        {
            fragmenttransaction.replace(0x7f0b005c, new ct());
        }
        fragmenttransaction.commit();
    }

    protected void onDestroy()
    {
        com.aadhk.restpos.b.f.a().c();
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x102002c)
        {
            k.a(this, p, true);
            return true;
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

    public final SQLiteDatabase p()
    {
        return m;
    }

    public final String q()
    {
        return r;
    }
}
