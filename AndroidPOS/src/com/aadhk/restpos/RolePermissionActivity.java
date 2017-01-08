// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.d.ii;
import com.aadhk.restpos.d.ip;
import com.aadhk.restpos.g.y;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity

public class RolePermissionActivity extends POSActivity
{

    private boolean a;
    private FragmentManager o;
    private y p;

    public RolePermissionActivity()
    {
    }

    public final y a()
    {
        return p;
    }

    public final void a(int i)
    {
        FragmentTransaction fragmenttransaction = o.beginTransaction();
        ii ii1 = new ii();
        Bundle bundle = new Bundle();
        bundle.putInt("bundlePermission", i);
        ii1.setArguments(bundle);
        if (a)
        {
            fragmenttransaction.replace(0x7f090060, ii1);
        } else
        {
            fragmenttransaction.replace(0x7f09005f, ii1);
        }
        fragmenttransaction.addToBackStack(null);
        fragmenttransaction.commit();
    }

    public final void b()
    {
        FragmentTransaction fragmenttransaction = o.beginTransaction();
        new ip();
        fragmenttransaction.replace(0x7f09005f, new ip());
        if (a)
        {
            fragmenttransaction.replace(0x7f090060, new ii());
        }
        fragmenttransaction.commit();
    }

    public final boolean c()
    {
        return a;
    }

    public void onBackPressed()
    {
        if (a)
        {
            finish();
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setTitle(0x7f080332);
        setContentView(0x7f030020);
        p = new y(this);
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

    protected void onDestroy()
    {
        y _tmp = p;
        f.a().c();
        super.onDestroy();
    }
}
