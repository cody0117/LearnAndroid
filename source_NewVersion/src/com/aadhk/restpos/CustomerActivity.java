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
import android.view.View;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.Customer;
import com.aadhk.restpos.d.d;
import com.aadhk.restpos.d.e;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity

public class CustomerActivity extends POSActivity
{

    private boolean a;
    private FragmentManager l;
    private SQLiteDatabase m;
    private String n;

    public CustomerActivity()
    {
    }

    public final SQLiteDatabase a()
    {
        return m;
    }

    public final void a(Customer customer)
    {
        FragmentTransaction fragmenttransaction = l.beginTransaction();
        d d1 = new d();
        if (customer != null)
        {
            Bundle bundle = new Bundle();
            bundle.putParcelable("bundleCustomer", customer);
            d1.setArguments(bundle);
        }
        if (a)
        {
            fragmenttransaction.replace(0x7f0b005a, d1);
        } else
        {
            fragmenttransaction.replace(0x7f0b0058, d1);
        }
        fragmenttransaction.addToBackStack(null);
        fragmenttransaction.commit();
    }

    public final void b()
    {
        FragmentTransaction fragmenttransaction = l.beginTransaction();
        fragmenttransaction.replace(0x7f0b0058, new e());
        if (a)
        {
            fragmenttransaction.replace(0x7f0b005a, new d());
        }
        fragmenttransaction.commit();
    }

    public final String c()
    {
        return n;
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        if (i == 2)
        {
            Fragment fragment;
            if (a)
            {
                fragment = l.findFragmentById(0x7f0b005a);
            } else
            {
                fragment = l.findFragmentById(0x7f0b0058);
            }
            fragment.onActivityResult(i, j, intent);
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setTitle(0x7f0902c6);
        setContentView(0x7f03001f);
        m = f.a().b();
        View view = findViewById(0x7f0b005a);
        boolean flag;
        Bundle bundle1;
        if (view != null && view.getVisibility() == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
        l = getSupportFragmentManager();
        bundle1 = getIntent().getExtras();
        if (bundle1 != null)
        {
            n = bundle1.getString("actionType");
        }
        b();
    }

    protected void onDestroy()
    {
        f.a().c();
        super.onDestroy();
    }
}
