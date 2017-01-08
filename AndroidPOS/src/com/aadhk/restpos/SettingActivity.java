// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.os.Bundle;
import android.view.MenuItem;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.d.it;
import com.aadhk.restpos.g.aa;
import com.aadhk.restpos.g.i;
import com.aadhk.restpos.g.z;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, POSApp

public class SettingActivity extends POSActivity
{

    private aa a;
    private i o;
    private z p;

    public SettingActivity()
    {
    }

    private void c()
    {
        ((POSApp)getApplicationContext()).c();
        ((POSApp)getApplicationContext()).j();
        ((POSApp)getApplicationContext()).l();
        ((POSApp)getApplicationContext()).n();
        ((POSApp)getApplicationContext()).f();
        finish();
    }

    public final aa a()
    {
        return a;
    }

    public final z b()
    {
        return p;
    }

    public void onBackPressed()
    {
        c();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setTitle(0x7f080030);
        a = new aa(this);
        o = new i(this);
        p = new z(this);
        getFragmentManager().beginTransaction().replace(0x1020002, new it()).commit();
    }

    public void onDestroy()
    {
        aa _tmp = a;
        f.a().c();
        i _tmp1 = o;
        f.a().c();
        z _tmp2 = p;
        f.a().c();
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x102002c)
        {
            c();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }
}
