// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import com.aadhk.product.library.a.e;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.Item;
import com.aadhk.restpos.d.bu;
import com.aadhk.restpos.d.cf;
import com.aadhk.restpos.g.k;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, as, ar, aq, 
//            ap

public class MgrItemActivity extends POSActivity
{

    private Map A;
    private Map B;
    private boolean a;
    private FragmentManager o;
    private long p;
    private bu q;
    private cf r;
    private int s;
    private k t;
    private Map u;
    private List v;
    private List w;
    private List x;
    private List y;
    private List z;

    public MgrItemActivity()
    {
    }

    static k a(MgrItemActivity mgritemactivity)
    {
        return mgritemactivity.t;
    }

    static List a(MgrItemActivity mgritemactivity, List list)
    {
        mgritemactivity.z = list;
        return list;
    }

    static Map a(MgrItemActivity mgritemactivity, Map map)
    {
        mgritemactivity.B = map;
        return map;
    }

    static List b(MgrItemActivity mgritemactivity, List list)
    {
        mgritemactivity.y = list;
        return list;
    }

    static Map b(MgrItemActivity mgritemactivity, Map map)
    {
        mgritemactivity.A = map;
        return map;
    }

    public final void a()
    {
        FragmentTransaction fragmenttransaction = o.beginTransaction();
        r = new cf();
        fragmenttransaction.replace(0x7f09005c, r);
        if (a)
        {
            q = new bu();
            fragmenttransaction.replace(0x7f09005e, q);
        }
        fragmenttransaction.commit();
    }

    public final void a(int i1)
    {
        s = i1;
    }

    public final void a(long l1)
    {
        p = l1;
    }

    public final void a(Item item)
    {
        FragmentTransaction fragmenttransaction = o.beginTransaction();
        q = new bu();
        Bundle bundle = new Bundle();
        bundle.putParcelable("bundleItem", item);
        q.setArguments(bundle);
        if (a)
        {
            fragmenttransaction.replace(0x7f09005e, q);
        } else
        {
            fragmenttransaction.replace(0x7f09005c, q);
        }
        fragmenttransaction.commit();
    }

    public final void a(List list)
    {
        x = list;
    }

    public final void b()
    {
        FragmentTransaction fragmenttransaction = o.beginTransaction();
        r = new cf();
        fragmenttransaction.replace(0x7f09005c, r);
        fragmenttransaction.commit();
    }

    public final void b(List list)
    {
        r.a(list);
    }

    public final List c()
    {
        return x;
    }

    public final void c(List list)
    {
        r.b(list);
    }

    public final List d()
    {
        return y;
    }

    public final List e()
    {
        return z;
    }

    public final Map f()
    {
        return A;
    }

    public final Map g()
    {
        return B;
    }

    public final int h()
    {
        return s;
    }

    public final long i()
    {
        return p;
    }

    public final Map j()
    {
        return u;
    }

    public final List k()
    {
        return v;
    }

    public final List l()
    {
        return w;
    }

    public final k m()
    {
        return t;
    }

    public final boolean n()
    {
        return a;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030022);
        t = new k(this);
        View view = findViewById(0x7f09005e);
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
        u = t.a();
        v = new ArrayList(u.values());
        v.add(0, getString(0x7f080281));
        w = new ArrayList(u.keySet());
        a();
        (new e(new as(this, (byte)0))).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
        (new e(new ar(this, (byte)0))).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
        (new e(new aq(this, (byte)0))).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
        (new e(new ap(this, (byte)0))).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    public void onDestroy()
    {
        k _tmp = t;
        com.aadhk.restpos.b.f.a().c();
        super.onDestroy();
    }
}
