// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import com.aadhk.product.library.c.c;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.n;
import com.aadhk.restpos.b.o;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.c.k;
import com.aadhk.restpos.d.dr;
import com.aadhk.restpos.d.dy;
import com.aadhk.restpos.f.l;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, br

public class ReceiptListActivity extends POSActivity
{

    private int a;
    private String l;
    private String m;
    private SQLiteDatabase n;
    private boolean o;
    private FragmentManager p;
    private n q;
    private o r;
    private Order s;
    private List t;

    public ReceiptListActivity()
    {
    }

    static int a(ReceiptListActivity receiptlistactivity)
    {
        receiptlistactivity.a = 5;
        return 5;
    }

    static String a(ReceiptListActivity receiptlistactivity, String s1)
    {
        receiptlistactivity.l = s1;
        return s1;
    }

    static String b(ReceiptListActivity receiptlistactivity, String s1)
    {
        receiptlistactivity.m = s1;
        return s1;
    }

    public final void a()
    {
        FragmentTransaction fragmenttransaction = p.beginTransaction();
        fragmenttransaction.add(0x7f0b0058, new dy());
        if (o)
        {
            findViewById(0x7f0b005a).setVisibility(8);
        }
        fragmenttransaction.commit();
    }

    public final void a(Order order)
    {
        s = order;
        order.setOrderPayments(r.a(order.getId()));
        t = q.b(order.getId());
        FragmentTransaction fragmenttransaction = p.beginTransaction();
        if (o)
        {
            findViewById(0x7f0b005a).setVisibility(0);
            fragmenttransaction.replace(0x7f0b005a, new dr());
        } else
        {
            fragmenttransaction.replace(0x7f0b0058, new dr());
            fragmenttransaction.addToBackStack(null);
        }
        fragmenttransaction.commit();
    }

    public final SQLiteDatabase b()
    {
        return n;
    }

    public final List c()
    {
        return t;
    }

    public final Order d()
    {
        return s;
    }

    public final String e()
    {
        return l;
    }

    public final String f()
    {
        return m;
    }

    public final int g()
    {
        return a;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030021);
        setTitle(0x7f090196);
        n = com.aadhk.restpos.b.f.a().b();
        a = c.f();
        l = com.aadhk.product.library.c.c.e();
        View view = findViewById(0x7f0b005a);
        boolean flag;
        if (view != null && view.getVisibility() == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        o = flag;
        p = getSupportFragmentManager();
        a();
        q = new n(n);
        r = new o(n);
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0f000e, menu);
        return super.onCreateOptionsMenu(menu);
    }

    protected void onDestroy()
    {
        com.aadhk.restpos.b.f.a().c();
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f0b0284)
        {
            a = 2;
            a();
            return true;
        }
        if (menuitem.getItemId() == 0x7f0b0285)
        {
            a = 3;
            a();
            return true;
        }
        if (menuitem.getItemId() == 0x7f0b0286)
        {
            a = 4;
            a();
            return true;
        }
        if (menuitem.getItemId() == 0x7f0b0287)
        {
            k k1 = new k(this);
            k1.a(new br(this));
            k1.show();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }
}
