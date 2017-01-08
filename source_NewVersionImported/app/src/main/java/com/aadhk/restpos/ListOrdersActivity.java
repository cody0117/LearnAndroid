// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.TextView;
import com.aadhk.restpos.a.ab;
import com.aadhk.restpos.b.e;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.m;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.c.bs;
import com.aadhk.restpos.f.k;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, TakeOrderActivity, ac

public class ListOrdersActivity extends POSActivity
    implements android.widget.AdapterView.OnItemClickListener
{

    public SQLiteDatabase a;
    private List l;
    private GridView m;
    private ab n;
    private m o;
    private e p;
    private MenuItem q;
    private MenuItem r;
    private long s;

    public ListOrdersActivity()
    {
    }

    static long a(ListOrdersActivity listordersactivity)
    {
        return listordersactivity.s;
    }

    static long a(ListOrdersActivity listordersactivity, long l1)
    {
        listordersactivity.s = l1;
        return l1;
    }

    static ab a(ListOrdersActivity listordersactivity, ab ab1)
    {
        listordersactivity.n = ab1;
        return ab1;
    }

    static List a(ListOrdersActivity listordersactivity, List list)
    {
        listordersactivity.l = list;
        return list;
    }

    static m b(ListOrdersActivity listordersactivity)
    {
        return listordersactivity.o;
    }

    static List c(ListOrdersActivity listordersactivity)
    {
        return listordersactivity.l;
    }

    static ab d(ListOrdersActivity listordersactivity)
    {
        return listordersactivity.n;
    }

    static GridView e(ListOrdersActivity listordersactivity)
    {
        return listordersactivity.m;
    }

    static MenuItem f(ListOrdersActivity listordersactivity)
    {
        return listordersactivity.q;
    }

    static MenuItem g(ListOrdersActivity listordersactivity)
    {
        return listordersactivity.r;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03009d);
        setTitle(0x7f09031d);
        a = com.aadhk.restpos.b.f.a().b();
        o = new m(a);
        p = new e(a);
        m = (GridView)findViewById(0x7f0b023a);
        TextView textview = (TextView)findViewById(0x7f0b011b);
        l = o.d(s);
        if (l.size() > 0)
        {
            textview.setVisibility(8);
        } else
        {
            textview.setVisibility(0);
        }
        n = new ab(this, l);
        m.setAdapter(n);
        m.setOnItemClickListener(this);
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0f0010, menu);
        q = menu.findItem(0x7f0b029a);
        r = menu.findItem(0x7f0b029b);
        r.setVisible(false);
        return super.onCreateOptionsMenu(menu);
    }

    protected void onDestroy()
    {
        com.aadhk.restpos.b.f.a().c();
        super.onDestroy();
    }

    public void onItemClick(AdapterView adapterview, View view, int i, long l1)
    {
        Order order = (Order)l.get(i);
        int j = order.getCustomerId() != 0L;
        com.aadhk.restpos.bean.Customer customer = null;
        if (j > 0)
        {
            customer = p.a(order.getCustomerId());
        }
        Intent intent = new Intent();
        Bundle bundle = new Bundle();
        bundle.putBoolean("bundleOrdered", true);
        bundle.putParcelable("bundleOrder", order);
        bundle.putParcelable("bundleCustomer", customer);
        intent.putExtras(bundle);
        intent.setClass(this, com/aadhk/restpos/TakeOrderActivity);
        startActivity(intent);
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x102002c)
        {
            k.c(this);
            return true;
        }
        if (menuitem.getItemId() != 0x7f0b029a) goto _L2; else goto _L1
_L1:
        bs bs1 = new bs(this);
        bs1.a(new ac(this, bs1));
        bs1.show();
_L4:
        return false;
_L2:
        if (menuitem.getItemId() == 0x7f0b029b)
        {
            q.setVisible(true);
            r.setVisible(false);
            s = 0L;
            l = o.d(s);
            n = new ab(this, l);
            m.setAdapter(n);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected void onResume()
    {
        super.onResume();
    }
}
