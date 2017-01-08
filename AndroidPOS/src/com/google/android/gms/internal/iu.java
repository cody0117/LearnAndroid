// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.google.android.gms.common.f;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            lk, jm, fj, ix, 
//            fh, ay, qa, le, 
//            gs, jo, me, iv, 
//            lb, iw, jp, lf, 
//            du, ad, ic, jr

public final class iu extends lk
    implements jm
{

    private final ic a;
    private final Object b = new Object();
    private final Context c;
    private final Object d = new Object();
    private final jr e;
    private final qa f;
    private lk g;
    private fj h;
    private du i;

    public iu(Context context, jr jr, qa qa1, ic ic)
    {
        a = ic;
        c = context;
        e = jr;
        f = qa1;
    }

    private ay a(fh fh1)
    {
        if (h.m == null)
        {
            throw new ix("The ad response must specify one of the supported ad sizes.", 0);
        }
        String as[] = h.m.split("x");
        if (as.length != 2)
        {
            throw new ix((new StringBuilder("Could not parse the ad size from the ad response: ")).append(h.m).toString(), 0);
        }
        int j;
        int k;
        ay aay[];
        int l;
        try
        {
            j = Integer.parseInt(as[0]);
            k = Integer.parseInt(as[1]);
        }
        catch (NumberFormatException numberformatexception)
        {
            throw new ix((new StringBuilder("Could not parse the ad size from the ad response: ")).append(h.m).toString(), 0);
        }
        aay = fh1.d.h;
        l = aay.length;
        ay ay1;
        int j1;
        int k1;
        for (int i1 = 0; i1 < l; i1++)
        {
            ay1 = aay[i1];
            float f1 = c.getResources().getDisplayMetrics().density;
            if (ay1.f == -1)
            {
                j1 = (int)((float)ay1.g / f1);
            } else
            {
                j1 = ay1.f;
            }
            if (ay1.c == -2)
            {
                k1 = (int)((float)ay1.d / f1);
            } else
            {
                k1 = ay1.c;
            }
            if (j == j1 && k == k1)
            {
                return new ay(ay1, fh1.d.h);
            }
        }

        throw new ix((new StringBuilder("The ad size from the ad response was not one of the requested sizes: ")).append(h.m).toString(), 0);
    }

    static Object a(iu iu1)
    {
        return iu1.d;
    }

    private boolean a(long l)
    {
        if (60000L - (SystemClock.elapsedRealtime() - l) <= 0L)
        {
            return false;
        }
        try
        {
            Object _tmp = d;
        }
        catch (InterruptedException interruptedexception)
        {
            throw new ix("Ad request cancelled.", -1);
        }
        return true;
    }

    static ic b(iu iu1)
    {
        return iu1.a;
    }

    public final void a()
    {
        int j = -2;
        Object obj = d;
        obj;
        JVM INSTR monitorenter ;
        fh fh1;
        String s = f.a().a(c);
        fh1 = new fh(e, s);
        long l = -1L;
        long l2;
        Context context;
        l2 = SystemClock.elapsedRealtime();
        context = c;
        if (!fh1.k.e) goto _L2; else goto _L1
_L1:
        Object obj1;
        obj1 = new jo(context, fh1, this);
        ((jo) (obj1)).e();
_L10:
        Object obj2 = b;
        obj2;
        JVM INSTR monitorenter ;
        g = ((lk) (obj1));
        if (g == null)
        {
            throw new ix("Could not start the ad request service.", 0);
        }
          goto _L3
        Exception exception2;
        exception2;
        obj2;
        JVM INSTR monitorexit ;
        throw exception2;
        ix ix1;
        ix1;
        ay ay1 = null;
_L15:
        j = ix1.a();
        if (j != 3 && j != -1) goto _L5; else goto _L4
_L4:
        ix1.getMessage();
_L12:
        if (h != null) goto _L7; else goto _L6
_L6:
        h = new fj(j);
_L13:
        me.a.post(new iv(this));
        long l1 = l;
_L11:
        boolean flag = TextUtils.isEmpty(h.r);
        if (flag) goto _L9; else goto _L8
_L8:
        JSONObject jsonobject = new JSONObject(h.r);
_L14:
        lb lb1 = new lb(fh1, h, i, ay1, j, l1, h.n, jsonobject);
        me.a.post(new iw(this, lb1));
        obj;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (com.google.android.gms.common.f.a(context) == 0)
        {
            break MISSING_BLOCK_LABEL_295;
        }
        obj1 = null;
          goto _L10
        obj1 = new jp(context, fh1, this);
          goto _L10
        Exception exception;
        exception;
        throw exception;
_L3:
        obj2;
        JVM INSTR monitorexit ;
        do
        {
            if (!a(l2))
            {
                throw new ix("Timed out waiting for ad response.", 2);
            }
        } while (h == null);
        synchronized (b)
        {
            g = null;
        }
        if (h.e != j && h.e != -3)
        {
            throw new ix((new StringBuilder("There was a problem getting an ad response. ErrorCode: ")).append(h.e).toString(), h.e);
        }
        break MISSING_BLOCK_LABEL_433;
        exception3;
        obj3;
        JVM INSTR monitorexit ;
        throw exception3;
        boolean flag2;
        l = SystemClock.elapsedRealtime();
        if (h.e == -3)
        {
            break MISSING_BLOCK_LABEL_521;
        }
        if (TextUtils.isEmpty(h.c))
        {
            throw new ix("No fill from ad server.", 3);
        }
        lf.a(c, h.u);
        flag2 = h.h;
        if (!flag2)
        {
            break MISSING_BLOCK_LABEL_521;
        }
        i = new du(h.c);
        ay ay2;
        if (fh1.d.h == null)
        {
            break MISSING_BLOCK_LABEL_676;
        }
        ay2 = a(fh1);
        ay1 = ay2;
_L16:
        ad ad1;
        boolean flag1 = h.v;
        lf.a().a(flag1);
        ad1 = lf.a().a(c);
        if (ad1 == null)
        {
            break MISSING_BLOCK_LABEL_591;
        }
        if (!ad1.isAlive())
        {
            ad1.a();
        }
        l1 = l;
          goto _L11
        JSONException jsonexception;
        jsonexception;
        throw new ix((new StringBuilder("Could not parse mediation config: ")).append(h.c).toString(), 0);
_L5:
        ix1.getMessage();
          goto _L12
_L7:
        h = new fj(j, h.k);
          goto _L13
        Exception exception1;
        exception1;
_L9:
        jsonobject = null;
          goto _L14
        ix1;
          goto _L15
        ay1 = null;
          goto _L16
    }

    public final void a(fj fj1)
    {
        synchronized (d)
        {
            h = fj1;
            Object _tmp = d;
        }
    }

    public final void u_()
    {
        synchronized (b)
        {
            if (g != null)
            {
                g.f();
            }
        }
    }
}
