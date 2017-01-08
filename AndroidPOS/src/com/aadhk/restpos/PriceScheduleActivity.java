// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.PriceSchedule;
import com.aadhk.restpos.d.fq;
import com.aadhk.restpos.d.gb;
import com.aadhk.restpos.g.t;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity

public class PriceScheduleActivity extends POSActivity
{

    private boolean a;
    private FragmentManager o;
    private t p;

    public PriceScheduleActivity()
    {
    }

    public final t a()
    {
        return p;
    }

    public final void a(PriceSchedule priceschedule)
    {
        FragmentTransaction fragmenttransaction = o.beginTransaction();
        fq fq1 = new fq();
        if (priceschedule != null)
        {
            Bundle bundle = new Bundle();
            bundle.putParcelable("bundlePriceSchedule", priceschedule);
            fq1.setArguments(bundle);
        }
        if (a)
        {
            fragmenttransaction.replace(0x7f090060, fq1);
        } else
        {
            fragmenttransaction.replace(0x7f09005f, fq1);
        }
        fragmenttransaction.addToBackStack(null);
        fragmenttransaction.commit();
    }

    public final void b()
    {
        FragmentTransaction fragmenttransaction = o.beginTransaction();
        fragmenttransaction.replace(0x7f09005f, new gb());
        if (a)
        {
            fragmenttransaction.replace(0x7f090060, new fq());
        }
        fragmenttransaction.commit();
    }

    public final boolean c()
    {
        return a;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setTitle(0x7f0802bb);
        setContentView(0x7f030020);
        p = new t(this);
        View view = findViewById(0x7f090060);
        boolean flag;
        if (view != null && view.getVisibility() == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
        o = getSupportFragmentManager();
        b();
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0f0001, menu);
        return super.onCreateOptionsMenu(menu);
    }

    protected void onDestroy()
    {
        t _tmp = p;
        f.a().c();
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f090301)
        {
            b();
            a(null);
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }
}
