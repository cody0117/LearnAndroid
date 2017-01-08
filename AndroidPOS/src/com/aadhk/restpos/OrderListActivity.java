// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.AsyncTask;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.GridView;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.a.ah;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.c.ct;
import com.aadhk.restpos.g.o;
import com.aadhk.restpos.util.q;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, bv, bu, bs

public class OrderListActivity extends POSActivity
    implements android.widget.AdapterView.OnItemClickListener
{

    private List a;
    private List o;
    private GridView p;
    private ah q;
    private MenuItem r;
    private MenuItem s;
    private long t;
    private o u;

    public OrderListActivity()
    {
    }

    static long a(OrderListActivity orderlistactivity)
    {
        return orderlistactivity.t;
    }

    static long a(OrderListActivity orderlistactivity, long l)
    {
        orderlistactivity.t = l;
        return l;
    }

    static ah a(OrderListActivity orderlistactivity, ah ah1)
    {
        orderlistactivity.q = ah1;
        return ah1;
    }

    static List a(OrderListActivity orderlistactivity, List list)
    {
        orderlistactivity.a = list;
        return list;
    }

    static o b(OrderListActivity orderlistactivity)
    {
        return orderlistactivity.u;
    }

    static List c(OrderListActivity orderlistactivity)
    {
        return orderlistactivity.a;
    }

    static ah d(OrderListActivity orderlistactivity)
    {
        return orderlistactivity.q;
    }

    static GridView e(OrderListActivity orderlistactivity)
    {
        return orderlistactivity.p;
    }

    static List f(OrderListActivity orderlistactivity)
    {
        return orderlistactivity.o;
    }

    static MenuItem g(OrderListActivity orderlistactivity)
    {
        return orderlistactivity.r;
    }

    static MenuItem h(OrderListActivity orderlistactivity)
    {
        return orderlistactivity.s;
    }

    public final o a()
    {
        return u;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f0300bb);
        setTitle(0x7f08037d);
        u = new o(this);
        o = new ArrayList();
        p = (GridView)findViewById(0x7f0902ae);
        p.setOnItemClickListener(this);
        (new d(new bv(this, (byte)0), this, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0f0015, menu);
        r = menu.findItem(0x7f09008b);
        s = menu.findItem(0x7f09031f);
        s.setVisible(false);
        return super.onCreateOptionsMenu(menu);
    }

    protected void onDestroy()
    {
        o _tmp = u;
        com.aadhk.restpos.b.f.a().c();
        super.onDestroy();
    }

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        Order order = (Order)a.get(i);
        if (order.getCustomerId() > 0L)
        {
            (new d(new bu(this, order), this, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
            return;
        } else
        {
            com.aadhk.restpos.util.q.a(this, order, null, true);
            finish();
            return;
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x102002c)
        {
            com.aadhk.restpos.util.q.b(this);
            return true;
        }
        if (menuitem.getItemId() != 0x7f09008b) goto _L2; else goto _L1
_L1:
        ct ct1 = new ct(this);
        ct1.a(new bs(this));
        ct1.show();
_L4:
        return false;
_L2:
        if (menuitem.getItemId() == 0x7f09031f)
        {
            t = 0L;
            r.setVisible(true);
            s.setVisible(false);
            q = new ah(this, o);
            p.setAdapter(q);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected void onResume()
    {
        super.onResume();
    }
}
