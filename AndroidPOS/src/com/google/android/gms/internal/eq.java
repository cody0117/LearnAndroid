// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.a.a.a.a;
import com.google.android.gms.a.f;
import com.google.android.gms.ads.b.b;
import com.google.android.gms.ads.b.c;
import com.google.android.gms.ads.b.e;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            ei, av, ep, er, 
//            ay, em

public final class eq extends ei
{

    private final b a;

    public eq(b b1)
    {
        a = b1;
    }

    private Bundle a(String s, int i, String s1)
    {
        Bundle bundle;
        Bundle bundle1;
        (new StringBuilder("Server parameters: ")).append(s);
        JSONObject jsonobject;
        Iterator iterator;
        String s2;
        try
        {
            bundle = new Bundle();
        }
        catch (Throwable throwable)
        {
            throw new RemoteException();
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_106;
        }
        jsonobject = new JSONObject(s);
        bundle1 = new Bundle();
        for (iterator = jsonobject.keys(); iterator.hasNext(); bundle1.putString(s2, jsonobject.getString(s2)))
        {
            s2 = (String)iterator.next();
        }

        bundle = bundle1;
        if (a instanceof a)
        {
            bundle.putString("adJson", s1);
            bundle.putInt("tagForChildDirectedTreatment", i);
        }
        return bundle;
    }

    public final com.google.android.gms.a.c a()
    {
        if (!(a instanceof c))
        {
            (new StringBuilder("MediationAdapter is not a MediationBannerAdapter: ")).append(a.getClass().getCanonicalName());
            throw new RemoteException();
        }
        com.google.android.gms.a.c c1;
        try
        {
            c1 = f.a(((c)a).d());
        }
        catch (Throwable throwable)
        {
            throw new RemoteException();
        }
        return c1;
    }

    public final void a(com.google.android.gms.a.c c1, av av1, String s, em em)
    {
        a(c1, av1, s, null, em);
    }

    public final void a(com.google.android.gms.a.c c1, av av1, String s, String s1, em em)
    {
        if (!(a instanceof e))
        {
            (new StringBuilder("MediationAdapter is not a MediationInterstitialAdapter: ")).append(a.getClass().getCanonicalName());
            throw new RemoteException();
        }
        e e1 = (e)a;
        if (av1.e == null) goto _L2; else goto _L1
_L1:
        HashSet hashset = new HashSet(av1.e);
_L5:
        ep ep1 = new ep(new Date(av1.b), av1.d, hashset, av1.k, av1.f, av1.g);
        if (av1.m == null) goto _L4; else goto _L3
_L3:
        Bundle bundle = av1.m.getBundle(e1.getClass().getName());
_L6:
        e1.a((Context)f.a(c1), new er(em), a(s, av1.g, s1), ep1, bundle);
        return;
_L2:
        hashset = null;
          goto _L5
_L4:
        bundle = null;
          goto _L6
        Throwable throwable;
        throwable;
        throw new RemoteException();
          goto _L5
    }

    public final void a(com.google.android.gms.a.c c1, ay ay1, av av1, String s, em em)
    {
        a(c1, ay1, av1, s, null, em);
    }

    public final void a(com.google.android.gms.a.c c1, ay ay1, av av1, String s, String s1, em em)
    {
        if (!(a instanceof c))
        {
            (new StringBuilder("MediationAdapter is not a MediationBannerAdapter: ")).append(a.getClass().getCanonicalName());
            throw new RemoteException();
        }
        c c2;
        HashSet hashset;
        c2 = (c)a;
        if (av1.e == null)
        {
            break MISSING_BLOCK_LABEL_194;
        }
        hashset = new HashSet(av1.e);
_L1:
        ep ep1;
        Bundle bundle;
        ep1 = new ep(new Date(av1.b), av1.d, hashset, av1.k, av1.f, av1.g);
        bundle = av1.m;
        Bundle bundle1;
        bundle1 = null;
        if (bundle == null)
        {
            break MISSING_BLOCK_LABEL_139;
        }
        bundle1 = av1.m.getBundle(c2.getClass().getName());
        c2.a((Context)f.a(c1), new er(em), a(s, av1.g, s1), com.google.android.gms.ads.f.a(ay1.f, ay1.c, ay1.b), ep1, bundle1);
        return;
        hashset = null;
          goto _L1
        Throwable throwable;
        throwable;
        throw new RemoteException();
    }

    public final void b()
    {
        if (!(a instanceof e))
        {
            (new StringBuilder("MediationAdapter is not a MediationInterstitialAdapter: ")).append(a.getClass().getCanonicalName());
            throw new RemoteException();
        }
        try
        {
            ((e)a).e();
            return;
        }
        catch (Throwable throwable)
        {
            throw new RemoteException();
        }
    }

    public final void c()
    {
        try
        {
            a.a();
            return;
        }
        catch (Throwable throwable)
        {
            throw new RemoteException();
        }
    }

    public final void d()
    {
        try
        {
            a.b();
            return;
        }
        catch (Throwable throwable)
        {
            throw new RemoteException();
        }
    }

    public final void e()
    {
        try
        {
            a.c();
            return;
        }
        catch (Throwable throwable)
        {
            throw new RemoteException();
        }
    }
}
