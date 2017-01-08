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
import com.aadhk.restpos.d.a;
import com.aadhk.restpos.d.bq;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity

public class CompanyActivity extends POSActivity
{

    private boolean a;
    private FragmentManager o;

    public CompanyActivity()
    {
    }

    public final void a()
    {
        FragmentTransaction fragmenttransaction = o.beginTransaction();
        bq bq1 = new bq();
        if (a)
        {
            fragmenttransaction.replace(0x7f09005e, bq1);
        } else
        {
            fragmenttransaction.replace(0x7f09005c, bq1);
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
                fragment = o.findFragmentById(0x7f09005e);
            } else
            {
                fragment = o.findFragmentById(0x7f09005c);
            }
            fragment.onActivityResult(i, j, intent);
        } else
        if (i == 10 || i == 2)
        {
            o.findFragmentById(0x7f09005c).onActivityResult(i, j, intent);
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setTitle(0x7f0802a2);
        setContentView(0x7f03001e);
        View view = findViewById(0x7f09005e);
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
        o = getSupportFragmentManager();
        fragmenttransaction = o.beginTransaction();
        fragmenttransaction.replace(0x7f09005c, new a());
        if (a)
        {
            fragmenttransaction.replace(0x7f09005e, new bq());
        }
        fragmenttransaction.commit();
    }
}
