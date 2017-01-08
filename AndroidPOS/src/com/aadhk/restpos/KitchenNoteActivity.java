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
import com.aadhk.restpos.bean.KitchenNote;
import com.aadhk.restpos.c.d;
import com.aadhk.restpos.d.az;
import com.aadhk.restpos.d.bk;
import com.aadhk.restpos.g.g;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, y

public class KitchenNoteActivity extends POSActivity
{

    private FragmentManager a;
    private az o;
    private boolean p;
    private g q;
    private bk r;

    public KitchenNoteActivity()
    {
    }

    private void c()
    {
        if (o != null && o.a() == 0 && !o.b().equals(""))
        {
            d d1 = new d(this);
            d1.setTitle(0x7f080243);
            d1.a(new y(this));
            d1.show();
            return;
        } else
        {
            finish();
            return;
        }
    }

    public final void a(KitchenNote kitchennote)
    {
        FragmentTransaction fragmenttransaction = a.beginTransaction();
        o = new az();
        Bundle bundle = new Bundle();
        bundle.putParcelable("kitchenNote", kitchennote);
        o.setArguments(bundle);
        if (p)
        {
            fragmenttransaction.replace(0x7f090060, o);
        } else
        {
            fragmenttransaction.replace(0x7f09005f, o);
        }
        fragmenttransaction.addToBackStack(null);
        fragmenttransaction.commit();
    }

    public final void a(List list)
    {
        r.a(list);
    }

    public final boolean a()
    {
        return p;
    }

    public final g b()
    {
        return q;
    }

    public void onBackPressed()
    {
        c();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setTitle(0x7f0802dd);
        setContentView(0x7f030020);
        q = new g(this);
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
        p = flag;
        a = getSupportFragmentManager();
        r = new bk();
        fragmenttransaction = a.beginTransaction();
        fragmenttransaction.replace(0x7f09005f, r);
        if (p)
        {
            o = new az();
            fragmenttransaction.replace(0x7f090060, o);
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
        g _tmp = q;
        f.a().c();
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f090301)
        {
            a(((KitchenNote) (null)));
            return true;
        }
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
