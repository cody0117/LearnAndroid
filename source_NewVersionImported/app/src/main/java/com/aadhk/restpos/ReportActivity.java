// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.Intent;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import com.aadhk.product.library.c.c;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.c.k;
import com.aadhk.restpos.f.l;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, bt, bs

public class ReportActivity extends POSActivity
{

    private Resources a;
    private l l;
    private int m;
    private bt n;
    private ViewPager o;
    private int p;
    private String q;
    private String r;
    private String s;
    private int t;
    private SQLiteDatabase u;

    public ReportActivity()
    {
    }

    static int a(ReportActivity reportactivity)
    {
        reportactivity.m = 5;
        return 5;
    }

    static String a(ReportActivity reportactivity, String s1)
    {
        reportactivity.r = s1;
        return s1;
    }

    static bt b(ReportActivity reportactivity)
    {
        return reportactivity.n;
    }

    static String b(ReportActivity reportactivity, String s1)
    {
        reportactivity.s = s1;
        return s1;
    }

    static ViewPager c(ReportActivity reportactivity)
    {
        return reportactivity.o;
    }

    static int d(ReportActivity reportactivity)
    {
        return reportactivity.m;
    }

    static int e(ReportActivity reportactivity)
    {
        return reportactivity.t;
    }

    static String f(ReportActivity reportactivity)
    {
        return reportactivity.r;
    }

    static String g(ReportActivity reportactivity)
    {
        return reportactivity.s;
    }

    static int h(ReportActivity reportactivity)
    {
        return reportactivity.p;
    }

    public final SQLiteDatabase a()
    {
        return u;
    }

    public final String b()
    {
        return q;
    }

    public final int c()
    {
        return m;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f0300a7);
        u = com.aadhk.restpos.b.f.a().b();
        a = getResources();
        l = new l(this);
        Bundle bundle1 = getIntent().getExtras();
        p = bundle1.getInt("reportType", 0);
        q = bundle1.getString("reportTitle");
        setTitle(q);
        m = l.f();
        t = l.e();
        r = com.aadhk.product.library.c.c.e();
        n = new bt(this, getSupportFragmentManager());
        o = (ViewPager)findViewById(0x7f0b0141);
        o.setAdapter(n);
        o.setCurrentItem(1000);
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0f0004, menu);
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
            m = 2;
            n.notifyDataSetChanged();
            o.setCurrentItem(1000);
            return true;
        }
        if (menuitem.getItemId() == 0x7f0b0285)
        {
            m = 3;
            n.notifyDataSetChanged();
            o.setCurrentItem(1000);
            return true;
        }
        if (menuitem.getItemId() == 0x7f0b0286)
        {
            m = 4;
            n.notifyDataSetChanged();
            o.setCurrentItem(1000);
            return true;
        }
        if (menuitem.getItemId() == 0x7f0b0287)
        {
            k k1 = new k(this);
            k1.a(new bs(this));
            k1.show();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }
}
