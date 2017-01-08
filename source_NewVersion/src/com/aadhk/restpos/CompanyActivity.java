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
import com.aadhk.restpos.d.a;
import com.aadhk.restpos.d.y;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity

public class CompanyActivity extends POSActivity
{

    private boolean a;
    private FragmentManager l;
    private SQLiteDatabase m;

    public CompanyActivity()
    {
    }

    public final SQLiteDatabase a()
    {
        return m;
    }

    public final void b()
    {
        FragmentTransaction fragmenttransaction = l.beginTransaction();
        y y1 = new y();
        if (a)
        {
            fragmenttransaction.replace(0x7f0b005a, y1);
        } else
        {
            fragmenttransaction.replace(0x7f0b0058, y1);
        }
        fragmenttransaction.addToBackStack(null);
        fragmenttransaction.commit();
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        if (i == 9162 || i == 6709)
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
        } else
        if (i == 10 || i == 2)
        {
            l.findFragmentById(0x7f0b0058).onActivityResult(i, j, intent);
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setTitle(0x7f090246);
        setContentView(0x7f03001d);
        m = f.a().b();
        View view = findViewById(0x7f0b005a);
        boolean flag;
        FragmentTransaction fragmenttransaction;
        if (view != null && view.getVisibility() == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
        l = getSupportFragmentManager();
        fragmenttransaction = l.beginTransaction();
        fragmenttransaction.replace(0x7f0b0058, new a());
        if (a)
        {
            fragmenttransaction.replace(0x7f0b005a, new y());
        }
        fragmenttransaction.commit();
    }

    public void onDestroy()
    {
        f.a().c();
        super.onDestroy();
    }
}
