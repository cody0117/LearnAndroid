// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Bundle;
import com.google.android.gms.common.f;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            di, bt, lq, lg, 
//            gs, nx, hz, qs, 
//            dh, li, lc, lh, 
//            qx, ac, ab, ad, 
//            qr

public final class lf
    implements di
{

    public static final String a;
    private static final lf c;
    public final String b = lq.d();
    private final Object d = new Object();
    private final lg e;
    private qr f;
    private BigInteger g;
    private final HashSet h = new HashSet();
    private final HashMap i = new HashMap();
    private boolean j;
    private boolean k;
    private boolean l;
    private Context m;
    private gs n;
    private boolean o;
    private ac p;
    private ad q;
    private ab r;
    private LinkedList s;
    private boolean t;
    private Bundle u;
    private hz v;
    private String w;

    private lf()
    {
        g = BigInteger.ONE;
        j = false;
        k = true;
        l = false;
        o = true;
        p = null;
        q = null;
        r = null;
        s = new LinkedList();
        t = false;
        u = bt.a();
        v = null;
        e = new lg(b);
    }

    public static Bundle a(Context context, lh lh1, String s1)
    {
        return c.b(context, lh1, s1);
    }

    public static lf a()
    {
        return c;
    }

    public static String a(int i1, String s1)
    {
        lf lf1 = c;
        Resources resources;
        if (lf1.n.e)
        {
            resources = lf1.m.getResources();
        } else
        {
            resources = com.google.android.gms.common.f.c(lf1.m);
        }
        if (resources == null)
        {
            return s1;
        } else
        {
            return resources.getString(i1);
        }
    }

    public static void a(Context context, gs gs1)
    {
        lf lf1 = c;
        Object obj = lf1.d;
        obj;
        JVM INSTR monitorenter ;
        if (lf1.l) goto _L2; else goto _L1
_L1:
        lf1.m = context.getApplicationContext();
        lf1.n = gs1;
        lf1.k = context.getSharedPreferences("admob", 0).getBoolean("use_https", true);
        nx.a(context);
        if (com.google.android.gms.common.f.a(context) == 0) goto _L4; else goto _L3
_L3:
        lf1.a(bt.a());
_L7:
        Thread thread = Thread.currentThread();
        Object obj1 = lf1.d;
        obj1;
        JVM INSTR monitorenter ;
        if (!lf1.t) goto _L6; else goto _L5
_L5:
        hz.a(lf1.m, thread, lf1.n);
_L8:
        lf1.w = lq.a(context, gs1.b);
        lf1.f = new qs();
        lf1.l = true;
_L2:
        obj;
        JVM INSTR monitorexit ;
        return;
_L4:
        new dh(context, lf1);
          goto _L7
        Exception exception;
        exception;
        throw exception;
_L6:
        lf1.s.add(thread);
          goto _L8
        Exception exception1;
        exception1;
        obj1;
        JVM INSTR monitorexit ;
        throw exception1;
          goto _L7
    }

    public static void a(Context context, boolean flag)
    {
        lf lf1 = c;
        synchronized (lf1.d)
        {
            if (flag != lf1.k)
            {
                lf1.k = flag;
                android.content.SharedPreferences.Editor editor = context.getSharedPreferences("admob", 0).edit();
                editor.putBoolean("use_https", flag);
                editor.commit();
            }
        }
    }

    public static void a(Throwable throwable)
    {
        lf lf1 = c;
        if (lf1.l)
        {
            (new hz(lf1.m, lf1.n, null, null)).a(throwable);
        }
    }

    public static void a(HashSet hashset)
    {
        lf lf1 = c;
        synchronized (lf1.d)
        {
            lf1.h.addAll(hashset);
        }
    }

    private Bundle b(Context context, lh lh1, String s1)
    {
        Object obj = d;
        obj;
        JVM INSTR monitorenter ;
        Bundle bundle;
        Bundle bundle1;
        bundle = new Bundle();
        bundle.putBundle("app", e.a(context, s1));
        bundle1 = new Bundle();
        String s2;
        for (Iterator iterator = i.keySet().iterator(); iterator.hasNext(); bundle1.putBundle(s2, ((li)i.get(s2)).a()))
        {
            s2 = (String)iterator.next();
        }

        break MISSING_BLOCK_LABEL_112;
        Exception exception;
        exception;
        throw exception;
        ArrayList arraylist;
        bundle.putBundle("slots", bundle1);
        arraylist = new ArrayList();
        for (Iterator iterator1 = h.iterator(); iterator1.hasNext(); arraylist.add(((lc)iterator1.next()).d())) { }
        bundle.putParcelableArrayList("ads", arraylist);
        lh1.a(h);
        h.clear();
        obj;
        JVM INSTR monitorexit ;
        return bundle;
    }

    public static String c()
    {
        return c.j();
    }

    public static lg d()
    {
        return c.k();
    }

    public static boolean e()
    {
        return c.l();
    }

    public static boolean f()
    {
        return c.m();
    }

    public static String g()
    {
        return c.n();
    }

    public static Bundle h()
    {
        return c.o();
    }

    private boolean i()
    {
        boolean flag;
        synchronized (d)
        {
            flag = o;
        }
        return flag;
    }

    private String j()
    {
        String s1;
        synchronized (d)
        {
            s1 = g.toString();
            g = g.add(BigInteger.ONE);
        }
        return s1;
    }

    private lg k()
    {
        lg lg1;
        synchronized (d)
        {
            lg1 = e;
        }
        return lg1;
    }

    private boolean l()
    {
        boolean flag;
        synchronized (d)
        {
            flag = j;
            j = true;
        }
        return flag;
    }

    private boolean m()
    {
        boolean flag;
        synchronized (d)
        {
            flag = k;
        }
        return flag;
    }

    private String n()
    {
        String s1;
        synchronized (d)
        {
            s1 = w;
        }
        return s1;
    }

    private Bundle o()
    {
        Bundle bundle;
        synchronized (d)
        {
            bundle = u;
        }
        return bundle;
    }

    public final ad a(Context context)
    {
        if (!c.o().getBoolean(bt.i.a(), false) || !qx.b() || i())
        {
            return null;
        }
        synchronized (d)
        {
            if (p != null)
            {
                break MISSING_BLOCK_LABEL_86;
            }
            if (context instanceof Activity)
            {
                break MISSING_BLOCK_LABEL_64;
            }
        }
        return null;
        exception;
        throw exception;
        p = new ac((Application)context.getApplicationContext(), (Activity)context);
        ad ad1;
        if (r == null)
        {
            r = new ab();
        }
        if (q == null)
        {
            q = new ad(p, r, u, new hz(m, n, null, null));
        }
        q.a();
        ad1 = q;
        obj;
        JVM INSTR monitorexit ;
        return ad1;
    }

    public final void a(Bundle bundle)
    {
        Object obj = d;
        obj;
        JVM INSTR monitorenter ;
        t = true;
        u = bundle;
        for (; !s.isEmpty(); hz.a(m, (Thread)s.remove(0), n)) { }
        break MISSING_BLOCK_LABEL_58;
        Exception exception;
        exception;
        throw exception;
        obj;
        JVM INSTR monitorexit ;
    }

    public final void a(lc lc1)
    {
        synchronized (d)
        {
            h.add(lc1);
        }
    }

    public final void a(String s1, li li1)
    {
        synchronized (d)
        {
            i.put(s1, li1);
        }
    }

    public final void a(boolean flag)
    {
        synchronized (d)
        {
            o = flag;
        }
    }

    public final qr b()
    {
        qr qr;
        synchronized (d)
        {
            qr = f;
        }
        return qr;
    }

    static 
    {
        lf lf1 = new lf();
        c = lf1;
        a = lf1.b;
    }
}
