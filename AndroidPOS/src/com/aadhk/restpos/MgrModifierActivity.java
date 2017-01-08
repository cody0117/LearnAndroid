// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.ModifierGroup;
import com.aadhk.restpos.d.db;
import com.aadhk.restpos.d.dm;
import com.aadhk.restpos.g.l;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity

public class MgrModifierActivity extends POSActivity
{

    private boolean a;
    private FragmentManager o;
    private dm p;
    private db q;
    private l r;

    public MgrModifierActivity()
    {
    }

    public final l a()
    {
        return r;
    }

    public final void a(ModifierGroup modifiergroup)
    {
        FragmentTransaction fragmenttransaction = o.beginTransaction();
        q = new db();
        Bundle bundle = new Bundle();
        bundle.putParcelable("bundleModifierGroup", modifiergroup);
        q.setArguments(bundle);
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

    public final boolean b()
    {
        return a;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setTitle(0x7f0802c2);
        setContentView(0x7f030020);
        View view = findViewById(0x7f090060);
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
        r = new l(this);
        o = getSupportFragmentManager();
        fragmenttransaction = o.beginTransaction();
        p = new dm();
        fragmenttransaction.replace(0x7f09005f, p);
        if (a)
        {
            q = new db();
            fragmenttransaction.replace(0x7f090060, q);
        }
        fragmenttransaction.commit();
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0f0001, menu);
        return super.onCreateOptionsMenu(menu);
    }

    protected void onDestroy()
    {
        l _tmp = r;
        f.a().c();
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f090301)
        {
            a(((ModifierGroup) (null)));
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }
}
