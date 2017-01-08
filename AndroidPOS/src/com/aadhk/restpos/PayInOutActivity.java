// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.c.c;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.CashRegister;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.c.bq;
import com.aadhk.restpos.c.h;
import com.aadhk.restpos.d.ew;
import com.aadhk.restpos.g.q;
import com.aadhk.restpos.util.r;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, cd, ce, POSApp, 
//            cf, PayCloseOutActivity, cc, cg

public class PayInOutActivity extends POSActivity
{

    private FragmentManager a;
    private int o;
    private String p;
    private String q;
    private List r;
    private POSPrinterSetting s;
    private String t;
    private String u;
    private String v;
    private q w;

    public PayInOutActivity()
    {
    }

    static int a(PayInOutActivity payinoutactivity)
    {
        payinoutactivity.o = 5;
        return 5;
    }

    static String a(PayInOutActivity payinoutactivity, String s1)
    {
        payinoutactivity.u = s1;
        return s1;
    }

    static List a(PayInOutActivity payinoutactivity, List list)
    {
        payinoutactivity.r = list;
        return list;
    }

    private void a(int i)
    {
        bq bq1 = new bq(this, null, i);
        bq1.a(new cd(this));
        bq1.show();
    }

    static void a(PayInOutActivity payinoutactivity, CashRegister cashregister)
    {
        (new d(new ce(payinoutactivity, cashregister), payinoutactivity, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    static String b(PayInOutActivity payinoutactivity)
    {
        return payinoutactivity.t;
    }

    static String b(PayInOutActivity payinoutactivity, String s1)
    {
        payinoutactivity.t = s1;
        return s1;
    }

    static String c(PayInOutActivity payinoutactivity)
    {
        return payinoutactivity.u;
    }

    static String c(PayInOutActivity payinoutactivity, String s1)
    {
        payinoutactivity.v = s1;
        return s1;
    }

    static q d(PayInOutActivity payinoutactivity)
    {
        return payinoutactivity.w;
    }

    static POSPrinterSetting e(PayInOutActivity payinoutactivity)
    {
        return payinoutactivity.s;
    }

    static String f(PayInOutActivity payinoutactivity)
    {
        return payinoutactivity.v;
    }

    static List g(PayInOutActivity payinoutactivity)
    {
        return payinoutactivity.r;
    }

    public final void a()
    {
        a = getSupportFragmentManager();
        FragmentTransaction fragmenttransaction = a.beginTransaction();
        fragmenttransaction.add(0x7f09005c, new ew());
        fragmenttransaction.commit();
    }

    public final void a(String s1)
    {
        p = s1;
    }

    public final String b()
    {
        return t;
    }

    public final void b(String s1)
    {
        q = s1;
    }

    public final q c()
    {
        return w;
    }

    public final int d()
    {
        return o;
    }

    public final String e()
    {
        return p;
    }

    public final String f()
    {
        return q;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03001e);
        setTitle(0x7f0800ff);
        w = new q(this);
        s = ((POSApp)getApplicationContext()).k();
        o = c.g();
        p = com.aadhk.product.library.c.c.e();
        q = com.aadhk.product.library.c.c.e();
        a();
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0f0002, menu);
        return super.onCreateOptionsMenu(menu);
    }

    public void onDestroy()
    {
        q _tmp = w;
        com.aadhk.restpos.b.f.a().c();
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f090302)
        {
            (new d(new cf(this, (byte)0), this, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
        } else
        {
            if (menuitem.getItemId() == 0x7f090303)
            {
                a(1);
                return true;
            }
            if (menuitem.getItemId() == 0x7f090304)
            {
                a(2);
                return true;
            }
            if (menuitem.getItemId() == 0x7f090305)
            {
                startActivity(new Intent(this, com/aadhk/restpos/PayCloseOutActivity));
                return true;
            }
            if (menuitem.getItemId() == 0x7f090306)
            {
                o = 2;
                a();
                return true;
            }
            if (menuitem.getItemId() == 0x7f090307)
            {
                o = 3;
                a();
                return true;
            }
            if (menuitem.getItemId() == 0x7f090308)
            {
                o = 4;
                a();
                return true;
            }
            if (menuitem.getItemId() == 0x7f090309)
            {
                h h1 = new h(this);
                h1.a(new cc(this));
                h1.show();
                return true;
            }
            if (menuitem.getItemId() == 0x102002c)
            {
                finish();
                return true;
            }
        }
        return true;
    }

    protected void onResume()
    {
        super.onResume();
        (new d(new cg(this, (byte)0), this, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
