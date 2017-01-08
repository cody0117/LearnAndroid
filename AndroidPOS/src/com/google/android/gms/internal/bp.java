// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.a;
import com.google.android.gms.ads.doubleclick.c;
import com.google.android.gms.ads.purchase.b;

// Referenced classes of package com.google.android.gms.internal:
//            as, ed, bc, ap, 
//            ay, aq, aw, ht, 
//            hy, cc, bm

public final class bp
{

    private final ed a;
    private final Context b;
    private final as c;
    private a d;
    private bc e;
    private String f;
    private String g;
    private com.google.android.gms.ads.doubleclick.a h;
    private b i;
    private com.google.android.gms.ads.purchase.a j;
    private com.google.android.gms.ads.doubleclick.b k;
    private c l;

    public bp(Context context)
    {
        this(context, com.google.android.gms.internal.as.a());
    }

    private bp(Context context, as as1)
    {
        a = new ed();
        b = context;
        c = as1;
        k = null;
    }

    private void b(String s)
    {
        if (e == null)
        {
            throw new IllegalStateException((new StringBuilder("The ad unit ID must be set on InterstitialAd before ")).append(s).append(" is called.").toString());
        } else
        {
            return;
        }
    }

    public final void a()
    {
        try
        {
            b("show");
            e.f();
            return;
        }
        catch (RemoteException remoteexception)
        {
            return;
        }
    }

    public final void a(a a1)
    {
        d = a1;
        if (e == null) goto _L2; else goto _L1
_L1:
        bc bc1 = e;
        if (a1 == null)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        ap ap1 = new ap(a1);
_L3:
        bc1.a(ap1);
_L2:
        return;
        ap1 = null;
          goto _L3
        RemoteException remoteexception;
        remoteexception;
    }

    public final void a(bm bm1)
    {
        try
        {
            if (e == null)
            {
                if (f == null)
                {
                    b("loadAd");
                }
                e = com.google.android.gms.internal.aq.a(b, new ay(), f, a);
                if (d != null)
                {
                    e.a(new ap(d));
                }
                if (h != null)
                {
                    e.a(new aw(h));
                }
                if (j != null)
                {
                    e.a(new ht(j));
                }
                if (i != null)
                {
                    e.a(new hy(i), g);
                }
                if (l != null)
                {
                    e.a(new cc(l));
                }
            }
            bc bc1 = e;
            as _tmp = c;
            if (bc1.a(com.google.android.gms.internal.as.a(b, bm1)))
            {
                a.a(bm1.i());
            }
            return;
        }
        catch (RemoteException remoteexception)
        {
            return;
        }
    }

    public final void a(String s)
    {
        if (f != null)
        {
            throw new IllegalStateException("The ad unit ID can only be set once on InterstitialAd.");
        } else
        {
            f = s;
            return;
        }
    }
}
