// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import com.google.a.a.a.a;

// Referenced classes of package com.google.android.gms.internal:
//            lk, mk, lb, jk, 
//            fj, dq, dz, me, 
//            jd, fh, la, je, 
//            mg, ay, iy, jh, 
//            jf, lq, ee, jb, 
//            du

public final class jc extends lk
    implements mk
{

    private final ee a;
    private final jb b;
    private final mg c;
    private final Object d = new Object();
    private final Context e;
    private final Object f = new Object();
    private final lb g;
    private fj h;
    private boolean i;
    private dq j;
    private du k;
    private dz l;

    public jc(Context context, lb lb1, mg mg1, ee ee, jb jb)
    {
        i = false;
        e = context;
        g = lb1;
        h = lb1.b;
        c = mg1;
        a = ee;
        b = jb;
        k = lb1.c;
    }

    static Object a(jc jc1)
    {
        return jc1.f;
    }

    private void a(long l1)
    {
        do
        {
            if (!b(l1))
            {
                throw new jk("Timed out waiting for WebView to finish loading.", 2);
            }
        } while (!i);
    }

    static jb b(jc jc1)
    {
        return jc1.b;
    }

    private boolean b(long l1)
    {
        if (60000L - (SystemClock.elapsedRealtime() - l1) <= 0L)
        {
            return false;
        }
        try
        {
            Object _tmp = f;
        }
        catch (InterruptedException interruptedexception)
        {
            throw new jk("Ad request cancelled.", -1);
        }
        return true;
    }

    static fj c(jc jc1)
    {
        return jc1.h;
    }

    static mg d(jc jc1)
    {
        return jc1.c;
    }

    public final void a()
    {
        Object obj = f;
        obj;
        JVM INSTR monitorenter ;
        fh fh1;
        int i1;
        fh1 = g.a;
        i1 = g.e;
        long l2 = SystemClock.elapsedRealtime();
        if (!h.h) goto _L2; else goto _L1
_L1:
        synchronized (d)
        {
            j = new dq(e, fh1, a, k);
        }
        l = j.a(l2);
        l.a;
        JVM INSTR tableswitch 0 1: default 116
    //                   0 473
    //                   1 480;
           goto _L3 _L4 _L5
_L3:
        throw new jk((new StringBuilder("Unexpected mediation result: ")).append(l.a).toString(), 0);
        jk jk1;
        jk1;
        int j1 = jk1.a();
        if (j1 != 3 && j1 != -1) goto _L7; else goto _L6
_L6:
        jk1.getMessage();
_L22:
        if (h != null) goto _L9; else goto _L8
_L8:
        h = new fj(j1);
_L23:
        com.google.android.gms.internal.me.a.post(new jd(this));
_L18:
        av av;
        mg mg1;
        java.util.List list;
        java.util.List list1;
        java.util.List list2;
        int k1;
        long l1;
        String s;
        boolean flag;
        av = fh1.c;
        mg1 = c;
        list = h.d;
        list1 = h.f;
        list2 = h.j;
        k1 = h.l;
        l1 = h.k;
        s = fh1.i;
        flag = h.h;
        if (l == null) goto _L11; else goto _L10
_L10:
        dt dt = l.b;
_L26:
        if (l == null) goto _L13; else goto _L12
_L12:
        eh eh = l.c;
_L27:
        if (l == null) goto _L15; else goto _L14
_L14:
        String s2 = l.d;
_L24:
        du du = k;
        if (l == null) goto _L17; else goto _L16
_L16:
        dw dw = l.e;
_L25:
        la la1 = new la(av, mg1, list, j1, list1, list2, k1, l1, s, flag, dt, eh, s2, du, dw, h.i, g.d, h.g, g.f, h.n, h.o, g.h, null);
        com.google.android.gms.internal.me.a.post(new je(this, la1));
        obj;
        JVM INSTR monitorexit ;
        return;
        exception1;
        obj1;
        JVM INSTR monitorexit ;
        throw exception1;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
_L4:
        j1 = i1;
          goto _L18
_L5:
        throw new jk("No fill from any mediation ad networks.", 3);
_L2:
        if (!h.p) goto _L20; else goto _L19
_L19:
        iy iy1;
        ay ay1 = c.e();
        int i2;
        int j2;
        if (ay1.e)
        {
            i2 = e.getResources().getDisplayMetrics().widthPixels;
            j2 = e.getResources().getDisplayMetrics().heightPixels;
        } else
        {
            i2 = ay1.g;
            j2 = ay1.d;
        }
        iy1 = new iy(this, c, i2, j2, (byte)0);
        com.google.android.gms.internal.me.a.post(new jh(this, iy1));
        a(l2);
        if (iy1.c())
        {
            throw new jk("AdNetwork sent passback url", 3);
        }
        if (!iy1.d())
        {
            throw new jk("AdNetwork timed out", 2);
        }
          goto _L21
_L20:
        com.google.android.gms.internal.me.a.post(new jf(this));
        a(l2);
        j1 = i1;
          goto _L18
_L7:
        jk1.getMessage();
          goto _L22
_L9:
        h = new fj(j1, h.k);
          goto _L23
_L15:
        String s1 = com/google/a/a/a/a.getName();
        s2 = s1;
          goto _L24
_L17:
        dw = null;
          goto _L25
_L21:
        j1 = i1;
          goto _L18
_L11:
        dt = null;
          goto _L26
_L13:
        eh = null;
          goto _L27
    }

    public final void a(mg mg1)
    {
        synchronized (f)
        {
            i = true;
            Object _tmp = f;
        }
    }

    public final void u_()
    {
        synchronized (d)
        {
            c.stopLoading();
            com.google.android.gms.internal.lq.a(c);
            if (j != null)
            {
                j.a();
            }
        }
    }
}
