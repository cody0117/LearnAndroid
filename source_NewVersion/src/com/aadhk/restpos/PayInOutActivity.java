// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.app.ActionBar;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import com.aadhk.product.library.c.c;
import com.aadhk.restpos.b.a;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.r;
import com.aadhk.restpos.bean.CashRegister;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.bean.ReportItem;
import com.aadhk.restpos.bean.User;
import com.aadhk.restpos.c.am;
import com.aadhk.restpos.c.az;
import com.aadhk.restpos.c.k;
import com.aadhk.restpos.d.cb;
import com.aadhk.restpos.f.h;
import com.aadhk.restpos.f.l;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, bg, PayCloseOutActivity, bf

public class PayInOutActivity extends POSActivity
{

    private FragmentManager a;
    private int l;
    private String m;
    private String n;
    private List o;
    private POSPrinterSetting p;
    private a q;
    private String r;
    private String s;
    private String t;

    public PayInOutActivity()
    {
    }

    static int a(PayInOutActivity payinoutactivity)
    {
        payinoutactivity.l = 5;
        return 5;
    }

    static String a(PayInOutActivity payinoutactivity, String s1)
    {
        payinoutactivity.s = s1;
        return s1;
    }

    private void a(int i)
    {
        az az1 = new az(this, null, i);
        az1.a(new bg(this));
        az1.show();
    }

    static void a(PayInOutActivity payinoutactivity, CashRegister cashregister)
    {
        if (cashregister.getTranxType() == 1)
        {
            payinoutactivity.q.a(cashregister);
            payinoutactivity.a();
            return;
        } else
        {
            payinoutactivity.q.a(cashregister);
            payinoutactivity.a();
            return;
        }
    }

    static String b(PayInOutActivity payinoutactivity)
    {
        return payinoutactivity.r;
    }

    static String c(PayInOutActivity payinoutactivity)
    {
        return payinoutactivity.s;
    }

    private void g()
    {
        o = new ArrayList();
        t = q.a(r);
        double d1;
        ReportItem reportitem;
        double d2;
        double d3;
        double d4;
        double d5;
        double d6;
        double d7;
        ReportItem reportitem1;
        ReportItem reportitem2;
        ReportItem reportitem3;
        ReportItem reportitem4;
        ReportItem reportitem5;
        ReportItem reportitem6;
        if (t != null)
        {
            d1 = q.a(0, t);
        } else
        {
            d1 = q.a(-1, r);
        }
        reportitem = new ReportItem();
        reportitem.setName(getResources().getString(0x7f0900ec));
        reportitem.setAmount(d1);
        d2 = q.a(t, r, 1);
        d3 = q.a(t, r, 2);
        d4 = q.b(t, r);
        d5 = h.a(d1, d2, d3, d4, j);
        d6 = q.a(0, r);
        d7 = h.c(d5, d6, j);
        o.add(reportitem);
        reportitem1 = new ReportItem();
        reportitem1.setName(getResources().getString(0x7f0900ed));
        reportitem1.setAmount(d4);
        o.add(reportitem1);
        reportitem2 = new ReportItem();
        reportitem2.setName(getResources().getString(0x7f0900d5));
        reportitem2.setAmount(d2);
        o.add(reportitem2);
        reportitem3 = new ReportItem();
        reportitem3.setName(getResources().getString(0x7f0900d6));
        reportitem3.setAmount(d3);
        o.add(reportitem3);
        reportitem4 = new ReportItem();
        reportitem4.setName(getResources().getString(0x7f0900ee));
        reportitem4.setAmount(d5);
        o.add(reportitem4);
        reportitem5 = new ReportItem();
        reportitem5.setName(getResources().getString(0x7f0900ef));
        reportitem5.setAmount(-d7);
        o.add(reportitem5);
        reportitem6 = new ReportItem();
        reportitem6.setName(getResources().getString(0x7f0900f0));
        reportitem6.setAmount(d6);
        o.add(reportitem6);
    }

    public final void a()
    {
        a = getSupportFragmentManager();
        FragmentTransaction fragmenttransaction = a.beginTransaction();
        fragmenttransaction.add(0x7f0b0058, new cb());
        fragmenttransaction.commit();
    }

    public final void a(String s1)
    {
        m = s1;
    }

    public final String b()
    {
        r = q.a(null);
        return r;
    }

    public final void b(String s1)
    {
        n = s1;
    }

    public final a c()
    {
        return q;
    }

    public final int d()
    {
        return l;
    }

    public final String e()
    {
        return m;
    }

    public final String f()
    {
        return n;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        getActionBar().setDisplayHomeAsUpEnabled(true);
        setContentView(0x7f03001d);
        setTitle(0x7f0900d0);
        android.database.sqlite.SQLiteDatabase sqlitedatabase = com.aadhk.restpos.b.f.a().b();
        q = new a(sqlitedatabase);
        p = (new r(sqlitedatabase)).b(2);
        l = c.f();
        m = com.aadhk.product.library.c.c.e();
        a();
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0f0002, menu);
        g();
        return super.onCreateOptionsMenu(menu);
    }

    public void onDestroy()
    {
        com.aadhk.restpos.b.f.a().c();
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f0b0280)
        {
            g();
            (new am(this, p, t, r, o, d.getAccount(), e.getEmail())).show();
        } else
        {
            if (menuitem.getItemId() == 0x7f0b0281)
            {
                a(1);
                return true;
            }
            if (menuitem.getItemId() == 0x7f0b0282)
            {
                a(2);
                return true;
            }
            if (menuitem.getItemId() == 0x7f0b0283)
            {
                startActivity(new Intent(this, com/aadhk/restpos/PayCloseOutActivity));
                return true;
            }
            if (menuitem.getItemId() == 0x7f0b0284)
            {
                l = 2;
                a();
                return true;
            }
            if (menuitem.getItemId() == 0x7f0b0285)
            {
                l = 3;
                a();
                return true;
            }
            if (menuitem.getItemId() == 0x7f0b0286)
            {
                l = 4;
                a();
                return true;
            }
            if (menuitem.getItemId() == 0x7f0b0287)
            {
                k k1 = new k(this);
                k1.a(new bf(this));
                k1.show();
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
        b();
    }
}
