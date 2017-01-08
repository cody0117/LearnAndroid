// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.Reservation;
import com.aadhk.restpos.bean.User;
import com.aadhk.restpos.d.hu;
import com.aadhk.restpos.d.ia;
import com.aadhk.restpos.g.x;
import com.aadhk.restpos.util.o;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, TakeOrderActivity

public class ReservationActivity extends POSActivity
{

    private static MenuItem a;
    private x o;
    private FragmentManager p;
    private ia q;
    private hu r;
    private boolean s;
    private boolean t;

    public ReservationActivity()
    {
        t = false;
    }

    private void d()
    {
        if (t)
        {
            a.setTitle(0x7f0800e4);
            return;
        } else
        {
            a.setTitle(0x7f0800e5);
            return;
        }
    }

    public final x a()
    {
        return o;
    }

    public final void a(Reservation reservation)
    {
        FragmentTransaction fragmenttransaction = p.beginTransaction();
        r = new hu();
        Bundle bundle = new Bundle();
        bundle.putParcelable("reservation", reservation);
        r.setArguments(bundle);
        if (s)
        {
            fragmenttransaction.replace(0x7f090060, r);
        } else
        {
            fragmenttransaction.replace(0x7f09005f, r);
        }
        fragmenttransaction.addToBackStack(null);
        fragmenttransaction.commit();
    }

    public final void a(Map map)
    {
        q.a(map);
    }

    public final void b(Reservation reservation)
    {
        Order order = new Order();
        order.setTableId(reservation.getTableId());
        order.setOrderTime(com.aadhk.restpos.util.o.c());
        order.setPersonNum(reservation.getGuestNumber());
        order.setTableName(reservation.getTableName());
        order.setWaiterName(d.getAccount());
        Intent intent = new Intent();
        Bundle bundle = new Bundle();
        bundle.putInt("bundleOrderType", 1);
        bundle.putParcelable("bundleOrder", order);
        intent.putExtras(bundle);
        intent.setClass(this, com/aadhk/restpos/TakeOrderActivity);
        startActivity(intent);
    }

    public final boolean b()
    {
        return s;
    }

    public final boolean c()
    {
        return t;
    }

    public void onBackPressed()
    {
        finish();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setTitle(0x7f0800d9);
        setContentView(0x7f030020);
        o = new x(this);
        View view = findViewById(0x7f090060);
        boolean flag;
        FragmentTransaction fragmenttransaction;
        if (view != null && view.getVisibility() == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        s = flag;
        p = getSupportFragmentManager();
        fragmenttransaction = p.beginTransaction();
        q = new ia();
        fragmenttransaction.replace(0x7f09005f, q);
        if (s)
        {
            r = new hu();
            fragmenttransaction.replace(0x7f090060, r);
        }
        fragmenttransaction.commit();
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0f0013, menu);
        a = menu.findItem(0x7f09031c);
        d();
        return super.onCreateOptionsMenu(menu);
    }

    protected void onDestroy()
    {
        x _tmp = o;
        f.a().c();
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f090301)
        {
            a(((Reservation) (null)));
            return true;
        }
        if (menuitem.getItemId() == 0x102002c)
        {
            finish();
            return true;
        }
        if (menuitem.getItemId() == 0x7f09031c)
        {
            if (t)
            {
                t = false;
            } else
            {
                t = true;
            }
            q.a(t);
            d();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }
}
