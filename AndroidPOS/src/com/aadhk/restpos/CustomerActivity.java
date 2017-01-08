// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import com.aadhk.restpos.bean.Customer;
import com.aadhk.restpos.d.f;
import com.aadhk.restpos.d.j;
import com.aadhk.restpos.g.c;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity

public class CustomerActivity extends POSActivity
{

    private boolean a;
    private FragmentManager o;
    private String p;
    private j q;
    private f r;
    private c s;
    private List t;

    public CustomerActivity()
    {
    }

    public final List a()
    {
        return t;
    }

    public final void a(Customer customer)
    {
        FragmentTransaction fragmenttransaction = o.beginTransaction();
        r = new f();
        if (customer != null)
        {
            Bundle bundle = new Bundle();
            bundle.putParcelable("bundleCustomer", customer);
            r.setArguments(bundle);
        }
        if (a)
        {
            fragmenttransaction.replace(0x7f090060, r);
        } else
        {
            fragmenttransaction.replace(0x7f09005f, r);
        }
        fragmenttransaction.addToBackStack(null);
        fragmenttransaction.commit();
    }

    public final void a(List list)
    {
        t = list;
    }

    public final String b()
    {
        return p;
    }

    public final void b(List list)
    {
        q.a(list);
    }

    public final c c()
    {
        return s;
    }

    public void onActivityResult(int i, int k, Intent intent)
    {
        if (i == 2)
        {
            Fragment fragment;
            if (a)
            {
                fragment = o.findFragmentById(0x7f090060);
            } else
            {
                fragment = o.findFragmentById(0x7f09005f);
            }
            fragment.onActivityResult(i, k, intent);
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setTitle(0x7f080324);
        setContentView(0x7f030020);
        s = new c(this);
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
        o = getSupportFragmentManager();
        bundle1 = getIntent().getExtras();
        if (bundle1 != null)
        {
            p = bundle1.getString("actionType");
        }
        fragmenttransaction = o.beginTransaction();
        q = new j();
        fragmenttransaction.replace(0x7f09005f, q);
        if (a)
        {
            r = new f();
            fragmenttransaction.replace(0x7f090060, r);
        }
        fragmenttransaction.commit();
    }

    protected void onDestroy()
    {
        c _tmp = s;
        com.aadhk.restpos.b.f.a().c();
        super.onDestroy();
    }
}
