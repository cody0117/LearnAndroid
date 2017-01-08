// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.MenuItem;
import android.view.View;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.User;
import com.aadhk.restpos.d.ff;
import com.aadhk.restpos.d.fn;
import com.aadhk.restpos.f.k;
import com.aadhk.restpos.f.l;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity

public class SplitBillActivity extends POSActivity
{

    private boolean a;
    private FragmentManager l;
    private SQLiteDatabase m;
    private Order n;
    private String o;

    public SplitBillActivity()
    {
    }

    public final void a()
    {
        if (a)
        {
            FragmentTransaction fragmenttransaction = l.beginTransaction();
            fn fn1 = new fn();
            Bundle bundle = new Bundle();
            bundle.putShort("bundleSplitType", (short)2);
            bundle.putLong("bundleBillId", 0L);
            fn1.setArguments(bundle);
            fragmenttransaction.replace(0x7f0b005c, fn1);
            fragmenttransaction.commit();
        }
    }

    public final void a(long l1)
    {
        if (a)
        {
            FragmentTransaction fragmenttransaction = l.beginTransaction();
            fn fn1 = new fn();
            Bundle bundle = new Bundle();
            bundle.putShort("bundleSplitType", (short)2);
            bundle.putLong("bundleBillId", l1);
            fn1.setArguments(bundle);
            fragmenttransaction.replace(0x7f0b005c, fn1);
            fragmenttransaction.commit();
            return;
        } else
        {
            b(l1);
            return;
        }
    }

    public final void b()
    {
        FragmentTransaction fragmenttransaction = l.beginTransaction();
        if (a)
        {
            Fragment fragment = l.findFragmentById(0x7f0b005b);
            if (fragment instanceof ff)
            {
                ((ff)fragment).a();
            }
            Fragment fragment1 = l.findFragmentById(0x7f0b005c);
            if (fragment1 instanceof fn)
            {
                ((fn)fragment1).a();
            }
        } else
        {
            ff ff1 = new ff();
            Bundle bundle = new Bundle();
            bundle.putShort("bundleSplitType", (short)2);
            ff1.setArguments(bundle);
            fragmenttransaction.replace(0x7f0b005b, ff1);
        }
        fragmenttransaction.commit();
    }

    public final void b(long l1)
    {
        FragmentTransaction fragmenttransaction = l.beginTransaction();
        fn fn1 = new fn();
        Bundle bundle = new Bundle();
        bundle.putLong("bundleBillId", l1);
        bundle.putShort("bundleSplitType", (short)2);
        fn1.setArguments(bundle);
        fragmenttransaction.replace(0x7f0b005b, fn1);
        fragmenttransaction.commit();
    }

    public final SQLiteDatabase c()
    {
        return m;
    }

    public final boolean d()
    {
        return a;
    }

    public final Order e()
    {
        return n;
    }

    public void onBackPressed()
    {
        k.a(this, n, true);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030020);
        View view = findViewById(0x7f0b005c);
        boolean flag;
        Bundle bundle1;
        FragmentTransaction fragmenttransaction;
        if (view != null && view.getVisibility() == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
        setTitle(0x7f0901e0);
        bundle1 = getIntent().getExtras();
        n = (Order)bundle1.getParcelable("bundleOrder");
        o = d.getAccount();
        m = f.a().b();
        l = getSupportFragmentManager();
        fragmenttransaction = l.beginTransaction();
        if (a)
        {
            fn fn1 = new fn();
            bundle1.putLong("bundleBillId", 0L);
            fn1.setArguments(bundle1);
            fragmenttransaction.replace(0x7f0b005c, fn1);
            ff ff1 = new ff();
            ff1.setArguments(bundle1);
            fragmenttransaction.replace(0x7f0b005b, ff1);
        } else
        {
            ff ff2 = new ff();
            ff2.setArguments(bundle1);
            fragmenttransaction.replace(0x7f0b005b, ff2);
        }
        fragmenttransaction.commit();
    }

    protected void onDestroy()
    {
        f.a().c();
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x102002c)
        {
            k.a(this, n, true);
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
}
