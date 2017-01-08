// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.MenuItem;
import android.view.View;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.User;
import com.aadhk.restpos.d.jh;
import com.aadhk.restpos.d.jx;
import com.aadhk.restpos.g.ab;
import com.aadhk.restpos.util.q;
import com.aadhk.restpos.util.r;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity

public class SplitBillActivity extends POSActivity
{

    private boolean a;
    private FragmentManager o;
    private ab p;
    private Order q;
    private String r;

    public SplitBillActivity()
    {
    }

    public final void a()
    {
        if (a)
        {
            FragmentTransaction fragmenttransaction = o.beginTransaction();
            jx jx1 = new jx();
            Bundle bundle = new Bundle();
            bundle.putShort("bundleSplitType", (short)2);
            bundle.putLong("bundleBillId", 0L);
            jx1.setArguments(bundle);
            fragmenttransaction.replace(0x7f09005f, jx1);
            fragmenttransaction.commit();
        }
    }

    public final void a(long l)
    {
        if (a)
        {
            FragmentTransaction fragmenttransaction = o.beginTransaction();
            jx jx1 = new jx();
            Bundle bundle = new Bundle();
            bundle.putShort("bundleSplitType", (short)2);
            bundle.putLong("bundleBillId", l);
            jx1.setArguments(bundle);
            fragmenttransaction.replace(0x7f09005f, jx1);
            fragmenttransaction.commit();
            return;
        } else
        {
            b(l);
            return;
        }
    }

    public final void b()
    {
        FragmentTransaction fragmenttransaction = o.beginTransaction();
        if (a)
        {
            Fragment fragment = o.findFragmentById(0x7f090060);
            if (fragment instanceof jh)
            {
                ((jh)fragment).a();
            }
            Fragment fragment1 = o.findFragmentById(0x7f09005f);
            if (fragment1 instanceof jx)
            {
                ((jx)fragment1).a();
            }
        } else
        {
            jh jh1 = new jh();
            Bundle bundle = new Bundle();
            bundle.putShort("bundleSplitType", (short)2);
            jh1.setArguments(bundle);
            fragmenttransaction.replace(0x7f09005f, jh1);
        }
        fragmenttransaction.commit();
    }

    public final void b(long l)
    {
        FragmentTransaction fragmenttransaction = o.beginTransaction();
        jx jx1 = new jx();
        Bundle bundle = new Bundle();
        bundle.putLong("bundleBillId", l);
        bundle.putShort("bundleSplitType", (short)2);
        jx1.setArguments(bundle);
        fragmenttransaction.replace(0x7f09005f, jx1);
        fragmenttransaction.commit();
    }

    public final ab c()
    {
        return p;
    }

    public final boolean d()
    {
        return a;
    }

    public final Order e()
    {
        return q;
    }

    public void onBackPressed()
    {
        com.aadhk.restpos.util.q.a(this, q, null, true);
        finish();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030020);
        View view = findViewById(0x7f090060);
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
        setTitle(0x7f08021f);
        bundle1 = getIntent().getExtras();
        q = (Order)bundle1.getParcelable("bundleOrder");
        r = d.getAccount();
        p = new ab(this);
        o = getSupportFragmentManager();
        fragmenttransaction = o.beginTransaction();
        if (a)
        {
            jx jx1 = new jx();
            bundle1.putLong("bundleBillId", 0L);
            jx1.setArguments(bundle1);
            fragmenttransaction.replace(0x7f09005f, jx1);
            jh jh1 = new jh();
            jh1.setArguments(bundle1);
            fragmenttransaction.replace(0x7f090060, jh1);
        } else
        {
            jh jh2 = new jh();
            jh2.setArguments(bundle1);
            fragmenttransaction.replace(0x7f09005f, jh2);
        }
        fragmenttransaction.commit();
    }

    public void onDestroy()
    {
        ab _tmp = p;
        f.a().c();
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x102002c)
        {
            com.aadhk.restpos.util.q.a(this, q, null, true);
            finish();
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
