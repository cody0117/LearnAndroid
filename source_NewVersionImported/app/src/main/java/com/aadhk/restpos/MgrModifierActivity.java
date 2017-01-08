// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.ModifierGroup;
import com.aadhk.restpos.d.au;
import com.aadhk.restpos.d.bd;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity

public class MgrModifierActivity extends POSActivity
{

    private boolean a;
    private FragmentManager l;
    private SQLiteDatabase m;

    public MgrModifierActivity()
    {
    }

    public final SQLiteDatabase a()
    {
        return m;
    }

    public final void a(ModifierGroup modifiergroup)
    {
        FragmentTransaction fragmenttransaction = l.beginTransaction();
        au au1 = new au();
        Bundle bundle = new Bundle();
        bundle.putParcelable("bundleModifierGroup", modifiergroup);
        au1.setArguments(bundle);
        if (a)
        {
            fragmenttransaction.replace(0x7f0b005a, au1);
        } else
        {
            fragmenttransaction.replace(0x7f0b0058, au1);
        }
        fragmenttransaction.addToBackStack(null);
        fragmenttransaction.commit();
    }

    public final void b()
    {
        FragmentTransaction fragmenttransaction = l.beginTransaction();
        fragmenttransaction.replace(0x7f0b0058, new bd());
        if (a)
        {
            fragmenttransaction.replace(0x7f0b005a, new au());
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
        setTitle(0x7f0900bb);
        setContentView(0x7f03001f);
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
        m = f.a().b();
        l = getSupportFragmentManager();
        b();
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0f0001, menu);
        return super.onCreateOptionsMenu(menu);
    }

    protected void onDestroy()
    {
        f.a().c();
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f0b027f)
        {
            a(null);
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }
}
