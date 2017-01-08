// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.c.c;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.c.h;
import com.aadhk.restpos.d.gz;
import com.aadhk.restpos.d.hi;
import com.aadhk.restpos.g.v;
import com.aadhk.restpos.util.r;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, cy, cx

public class ReceiptListActivity extends POSActivity
{

    private int a;
    private String o;
    private String p;
    private v q;
    private boolean r;
    private FragmentManager s;
    private hi t;
    private gz u;

    public ReceiptListActivity()
    {
    }

    static gz a(ReceiptListActivity receiptlistactivity, gz gz)
    {
        receiptlistactivity.u = gz;
        return gz;
    }

    static v a(ReceiptListActivity receiptlistactivity)
    {
        return receiptlistactivity.q;
    }

    static String a(ReceiptListActivity receiptlistactivity, String s1)
    {
        receiptlistactivity.o = s1;
        return s1;
    }

    static FragmentManager b(ReceiptListActivity receiptlistactivity)
    {
        return receiptlistactivity.s;
    }

    static String b(ReceiptListActivity receiptlistactivity, String s1)
    {
        receiptlistactivity.p = s1;
        return s1;
    }

    static gz c(ReceiptListActivity receiptlistactivity)
    {
        return receiptlistactivity.u;
    }

    static boolean d(ReceiptListActivity receiptlistactivity)
    {
        return receiptlistactivity.r;
    }

    static int e(ReceiptListActivity receiptlistactivity)
    {
        receiptlistactivity.a = 5;
        return 5;
    }

    public final void a()
    {
        FragmentTransaction fragmenttransaction = s.beginTransaction();
        t = new hi();
        fragmenttransaction.add(0x7f09005c, t);
        if (r)
        {
            findViewById(0x7f09005e).setVisibility(8);
        }
        fragmenttransaction.commit();
    }

    public final void a(Order order)
    {
        (new d(new cy(this, order), this, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    public final v b()
    {
        return q;
    }

    public final String c()
    {
        return o;
    }

    public final String d()
    {
        return p;
    }

    public final int e()
    {
        return a;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030022);
        setTitle(0x7f0801d1);
        q = new v(this);
        a = c.g();
        o = com.aadhk.product.library.c.c.e();
        View view = findViewById(0x7f09005e);
        boolean flag;
        if (view != null && view.getVisibility() == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        r = flag;
        s = getSupportFragmentManager();
        a();
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0f0011, menu);
        return super.onCreateOptionsMenu(menu);
    }

    public void onDestroy()
    {
        v _tmp = q;
        f.a().c();
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f090306)
        {
            a = 2;
            a();
            return true;
        }
        if (menuitem.getItemId() == 0x7f090307)
        {
            a = 3;
            a();
            return true;
        }
        if (menuitem.getItemId() == 0x7f090308)
        {
            a = 4;
            a();
            return true;
        }
        if (menuitem.getItemId() == 0x7f090309)
        {
            h h1 = new h(this);
            h1.a(new cx(this));
            h1.show();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }
}
