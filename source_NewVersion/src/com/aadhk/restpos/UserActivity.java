// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.User;
import com.aadhk.restpos.d.fu;
import com.aadhk.restpos.d.fx;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity

public class UserActivity extends POSActivity
{

    private boolean a;
    private FragmentManager l;
    private SQLiteDatabase m;

    public UserActivity()
    {
    }

    public final SQLiteDatabase a()
    {
        return m;
    }

    public final void a(User user)
    {
        FragmentTransaction fragmenttransaction = l.beginTransaction();
        fu fu1 = new fu();
        if (user != null)
        {
            Bundle bundle = new Bundle();
            bundle.putParcelable("bundleUser", user);
            fu1.setArguments(bundle);
        }
        if (a)
        {
            fragmenttransaction.replace(0x7f0b005a, fu1);
        } else
        {
            fragmenttransaction.replace(0x7f0b0058, fu1);
        }
        fragmenttransaction.addToBackStack(null);
        fragmenttransaction.commit();
    }

    public final void b()
    {
        FragmentTransaction fragmenttransaction = l.beginTransaction();
        fragmenttransaction.replace(0x7f0b0058, new fx());
        if (a)
        {
            fragmenttransaction.replace(0x7f0b005a, new fu());
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
        setTitle(0x7f0902d2);
        setContentView(0x7f03001f);
        m = f.a().b();
        View view = findViewById(0x7f0b005a);
        boolean flag;
        if (view != null && view.getVisibility() == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
        l = getSupportFragmentManager();
        b();
    }

    public void onDestroy()
    {
        f.a().c();
        super.onDestroy();
    }
}
