// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.User;
import com.aadhk.restpos.d.kk;
import com.aadhk.restpos.d.kq;
import com.aadhk.restpos.g.ae;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity

public class UserActivity extends POSActivity
{

    private boolean a;
    private FragmentManager o;
    private kq p;
    private kk q;
    private ae r;
    private List s;

    public UserActivity()
    {
    }

    public final ae a()
    {
        return r;
    }

    public final void a(User user)
    {
        FragmentTransaction fragmenttransaction = o.beginTransaction();
        q = new kk();
        if (user != null)
        {
            Bundle bundle = new Bundle();
            bundle.putParcelable("bundleUser", user);
            q.setArguments(bundle);
        }
        if (a)
        {
            fragmenttransaction.replace(0x7f090060, q);
        } else
        {
            fragmenttransaction.replace(0x7f09005f, q);
        }
        fragmenttransaction.addToBackStack(null);
        fragmenttransaction.commit();
    }

    public final void a(List list)
    {
        p.a(list);
    }

    public final List b()
    {
        return s;
    }

    public final void b(List list)
    {
        s = list;
    }

    public final void c()
    {
        FragmentTransaction fragmenttransaction = o.beginTransaction();
        p = new kq();
        fragmenttransaction.replace(0x7f09005f, p);
        if (a)
        {
            q = new kk();
            fragmenttransaction.replace(0x7f090060, new kk());
        }
        fragmenttransaction.commit();
    }

    public final boolean d()
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
        setTitle(0x7f080330);
        setContentView(0x7f030020);
        r = new ae(this);
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
        c();
    }

    protected void onDestroy()
    {
        ae _tmp = r;
        f.a().c();
        super.onDestroy();
    }
}
