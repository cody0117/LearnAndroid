// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.a.f;
import com.google.android.gms.ads.a;
import com.google.android.gms.ads.d;
import com.google.android.gms.ads.doubleclick.c;
import com.google.android.gms.ads.purchase.b;

// Referenced classes of package com.google.android.gms.internal:
//            as, ed, bb, ay, 
//            me, bc, ap, aq, 
//            aw, ht, hy, cc, 
//            bm

public final class bo
{

    private final ed a;
    private final as b;
    private a c;
    private bc d;
    private d e[];
    private String f;
    private String g;
    private ViewGroup h;
    private com.google.android.gms.ads.doubleclick.a i;
    private com.google.android.gms.ads.purchase.a j;
    private b k;
    private c l;

    public bo(ViewGroup viewgroup)
    {
        this(viewgroup, null, false, com.google.android.gms.internal.as.a(), (byte)0);
    }

    public bo(ViewGroup viewgroup, AttributeSet attributeset, boolean flag)
    {
        this(viewgroup, attributeset, flag, com.google.android.gms.internal.as.a(), (byte)0);
    }

    private bo(ViewGroup viewgroup, AttributeSet attributeset, boolean flag, as as1)
    {
        a = new ed();
        h = viewgroup;
        b = as1;
        if (attributeset != null)
        {
            android.content.Context context = viewgroup.getContext();
            try
            {
                bb bb1 = new bb(context, attributeset);
                e = bb1.a(flag);
                f = bb1.a();
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                ay ay1 = new ay(context, d.a);
                String s = illegalargumentexception.getMessage();
                illegalargumentexception.getMessage();
                com.google.android.gms.internal.me.a(viewgroup, ay1, s);
                return;
            }
            if (viewgroup.isInEditMode())
            {
                com.google.android.gms.internal.me.b(viewgroup, new ay(context, e[0]), "Ads by Google");
                return;
            }
        }
        d = null;
    }

    private bo(ViewGroup viewgroup, AttributeSet attributeset, boolean flag, as as1, byte byte0)
    {
        this(viewgroup, attributeset, flag, as1);
    }

    public final void a()
    {
        try
        {
            if (d != null)
            {
                d.b();
            }
            return;
        }
        catch (RemoteException remoteexception)
        {
            return;
        }
    }

    public final void a(a a1)
    {
        c = a1;
        if (d == null) goto _L2; else goto _L1
_L1:
        bc bc1 = d;
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
        if (d != null)
        {
            break MISSING_BLOCK_LABEL_232;
        }
        if ((e == null || f == null) && d == null)
        {
            throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
        }
        android.content.Context context = h.getContext();
        d = com.google.android.gms.internal.aq.a(context, new ay(context, e), f, a);
        if (c != null)
        {
            d.a(new ap(c));
        }
        if (i != null)
        {
            d.a(new aw(i));
        }
        if (j != null)
        {
            d.a(new ht(j));
        }
        if (k != null)
        {
            d.a(new hy(k), g);
        }
        if (l != null)
        {
            d.a(new cc(l));
        }
        com.google.android.gms.a.c c1 = d.a();
        if (c1 != null)
        {
            try
            {
                h.addView((View)com.google.android.gms.a.f.a(c1));
            }
            catch (RemoteException remoteexception1) { }
        }
        try
        {
            bc bc1 = d;
            b;
            if (bc1.a(com.google.android.gms.internal.as.a(h.getContext(), bm1)))
            {
                a.a(bm1.i());
                return;
            }
        }
        catch (RemoteException remoteexception) { }
        return;
    }

    public final void a(String s)
    {
        if (f != null)
        {
            throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
        } else
        {
            f = s;
            return;
        }
    }

    public final transient void a(d ad[])
    {
        if (e != null)
        {
            throw new IllegalStateException("The ad size can only be set once on AdView.");
        }
        e = ad;
        try
        {
            if (d != null)
            {
                d.a(new ay(h.getContext(), e));
            }
        }
        catch (RemoteException remoteexception) { }
        h.requestLayout();
    }

    public final d b()
    {
        d d1;
        if (d == null)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        d1 = d.i().a();
        return d1;
        RemoteException remoteexception;
        remoteexception;
        if (e != null)
        {
            return e[0];
        } else
        {
            return null;
        }
    }

    public final void c()
    {
        try
        {
            if (d != null)
            {
                d.d();
            }
            return;
        }
        catch (RemoteException remoteexception)
        {
            return;
        }
    }

    public final void d()
    {
        try
        {
            if (d != null)
            {
                d.e();
            }
            return;
        }
        catch (RemoteException remoteexception)
        {
            return;
        }
    }
}
