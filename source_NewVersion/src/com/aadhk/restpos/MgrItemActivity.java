// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.Item;
import com.aadhk.restpos.d.ag;
import com.aadhk.restpos.d.aq;
import com.aadhk.restpos.d.z;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity

public class MgrItemActivity extends POSActivity
{

    private boolean a;
    private FragmentManager l;
    private SQLiteDatabase m;
    private long n;
    private z o;
    private ag p;
    private int q;

    public MgrItemActivity()
    {
    }

    public final SQLiteDatabase a()
    {
        return m;
    }

    public final void a(int i)
    {
        q = i;
    }

    public final void a(long l1)
    {
        n = l1;
    }

    public final void a(Item item)
    {
        FragmentTransaction fragmenttransaction = l.beginTransaction();
        o = new z();
        Bundle bundle = new Bundle();
        bundle.putParcelable("bundleItem", item);
        o.setArguments(bundle);
        if (a)
        {
            fragmenttransaction.replace(0x7f0b005a, o);
        } else
        {
            fragmenttransaction.replace(0x7f0b0058, o);
        }
        fragmenttransaction.commit();
    }

    public final void a(List list)
    {
        o.a(list);
    }

    public final void b(Item item)
    {
        FragmentTransaction fragmenttransaction = l.beginTransaction();
        aq aq1 = new aq();
        Bundle bundle = new Bundle();
        bundle.putParcelable("bundleItem", item);
        aq1.setArguments(bundle);
        fragmenttransaction.replace(0x7f0b0058, aq1);
        fragmenttransaction.addToBackStack(null);
        fragmenttransaction.commit();
    }

    public final void b(List list)
    {
        p.a(list);
    }

    public final boolean b()
    {
        return a;
    }

    public final void c()
    {
        FragmentTransaction fragmenttransaction = l.beginTransaction();
        p = new ag();
        fragmenttransaction.replace(0x7f0b0058, p);
        if (a)
        {
            o = new z();
            fragmenttransaction.replace(0x7f0b005a, o);
        }
        fragmenttransaction.commit();
    }

    public final void c(Item item)
    {
        FragmentTransaction fragmenttransaction = l.beginTransaction();
        o = new z();
        Bundle bundle = new Bundle();
        bundle.putParcelable("bundleItem", item);
        o.setArguments(bundle);
        if (a)
        {
            fragmenttransaction.replace(0x7f0b005a, o);
        } else
        {
            fragmenttransaction.replace(0x7f0b0058, o);
        }
        fragmenttransaction.addToBackStack(null);
        fragmenttransaction.commit();
    }

    public final void d()
    {
        FragmentTransaction fragmenttransaction = l.beginTransaction();
        p = new ag();
        fragmenttransaction.replace(0x7f0b0058, p);
        fragmenttransaction.commit();
    }

    public final void e()
    {
        FragmentTransaction fragmenttransaction = l.beginTransaction();
        aq aq1 = new aq();
        if (a)
        {
            fragmenttransaction.replace(0x7f0b005a, aq1);
        } else
        {
            fragmenttransaction.replace(0x7f0b0058, aq1);
        }
        fragmenttransaction.addToBackStack(null);
        fragmenttransaction.commit();
    }

    public final int f()
    {
        return q;
    }

    public final long g()
    {
        return n;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030021);
        m = com.aadhk.restpos.b.f.a().b();
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
        c();
    }

    protected void onDestroy()
    {
        com.aadhk.restpos.b.f.a().c();
        super.onDestroy();
    }
}
