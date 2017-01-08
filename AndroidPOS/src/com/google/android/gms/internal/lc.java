// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.SystemClock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

// Referenced classes of package com.google.android.gms.internal:
//            lf, lg, ld, av

public final class lc
{

    private final lf a;
    private final LinkedList b;
    private final Object c;
    private final String d;
    private final String e;
    private long f;
    private long g;
    private boolean h;
    private long i;
    private long j;
    private long k;
    private long l;

    private lc(lf lf1, String s, String s1)
    {
        c = new Object();
        f = -1L;
        g = -1L;
        h = false;
        i = -1L;
        j = 0L;
        k = -1L;
        l = -1L;
        a = lf1;
        d = s;
        e = s1;
        b = new LinkedList();
    }

    public lc(String s, String s1)
    {
        this(lf.a(), s, s1);
    }

    public final void a()
    {
        synchronized (c)
        {
            if (l != -1L && g == -1L)
            {
                g = SystemClock.elapsedRealtime();
                a.a(this);
            }
            lf _tmp = a;
            lf.d().c();
        }
    }

    public final void a(long l1)
    {
        synchronized (c)
        {
            l = l1;
            if (l != -1L)
            {
                a.a(this);
            }
        }
    }

    public final void a(av av)
    {
        synchronized (c)
        {
            k = SystemClock.elapsedRealtime();
            lf _tmp = a;
            lf.d().a(av, k);
        }
    }

    public final void a(boolean flag)
    {
        Object obj = c;
        obj;
        JVM INSTR monitorenter ;
        if (l == -1L)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        i = SystemClock.elapsedRealtime();
        if (flag)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        g = i;
        a.a(this);
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final void b()
    {
        synchronized (c)
        {
            if (l != -1L)
            {
                ld ld1 = new ld();
                ld1.c();
                b.add(ld1);
                j = 1L + j;
                lf _tmp = a;
                lf.d().b();
                a.a(this);
            }
        }
    }

    public final void b(long l1)
    {
        synchronized (c)
        {
            if (l != -1L)
            {
                f = l1;
                a.a(this);
            }
        }
    }

    public final void b(boolean flag)
    {
        synchronized (c)
        {
            if (l != -1L)
            {
                h = flag;
                a.a(this);
            }
        }
    }

    public final void c()
    {
        synchronized (c)
        {
            if (l != -1L && !b.isEmpty())
            {
                ld ld1 = (ld)b.getLast();
                if (ld1.a() == -1L)
                {
                    ld1.b();
                    a.a(this);
                }
            }
        }
    }

    public final Bundle d()
    {
        Object obj = c;
        obj;
        JVM INSTR monitorenter ;
        Bundle bundle;
        ArrayList arraylist;
        bundle = new Bundle();
        bundle.putString("seq_num", d);
        bundle.putString("slotid", e);
        bundle.putBoolean("ismediation", h);
        bundle.putLong("treq", k);
        bundle.putLong("tresponse", l);
        bundle.putLong("timp", g);
        bundle.putLong("tload", i);
        bundle.putLong("pcc", j);
        bundle.putLong("tfetch", f);
        arraylist = new ArrayList();
        for (Iterator iterator = b.iterator(); iterator.hasNext(); arraylist.add(((ld)iterator.next()).d())) { }
        break MISSING_BLOCK_LABEL_160;
        Exception exception;
        exception;
        throw exception;
        bundle.putParcelableArrayList("tclick", arraylist);
        obj;
        JVM INSTR monitorexit ;
        return bundle;
    }
}
