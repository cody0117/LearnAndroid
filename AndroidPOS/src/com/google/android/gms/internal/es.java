// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.a.a.b;
import com.google.a.a.c;
import com.google.a.a.d;
import com.google.a.a.e;
import com.google.a.a.h;
import com.google.android.gms.a.f;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            ei, et, av, eu, 
//            em, ay

public final class es extends ei
{

    private final b a;
    private final h b;

    public es(b b1, h h)
    {
        a = b1;
        b = h;
    }

    private e a(String s)
    {
        HashMap hashmap;
        if (s != null)
        {
            try
            {
                JSONObject jsonobject = new JSONObject(s);
                hashmap = new HashMap(jsonobject.length());
                String s1;
                for (Iterator iterator = jsonobject.keys(); iterator.hasNext(); hashmap.put(s1, jsonobject.getString(s1)))
                {
                    s1 = (String)iterator.next();
                }

            }
            catch (Throwable throwable)
            {
                throw new RemoteException();
            }
            break MISSING_BLOCK_LABEL_94;
        }
        hashmap = new HashMap(0);
        Class class1 = a.c();
        e e1;
        e1 = null;
        if (class1 == null)
        {
            break MISSING_BLOCK_LABEL_126;
        }
        e1 = (e)class1.newInstance();
        e1.a(hashmap);
        return e1;
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
            c1 = f.a(((c)a).e());
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
        if (!(a instanceof d))
        {
            (new StringBuilder("MediationAdapter is not a MediationInterstitialAdapter: ")).append(a.getClass().getCanonicalName());
            throw new RemoteException();
        }
        try
        {
            d d1 = (d)a;
            new et(em);
            f.a(c1);
            int _tmp = av1.g;
            a(s);
            eu.a(av1);
            h _tmp1 = b;
            d1.d();
            return;
        }
        catch (Throwable throwable)
        {
            throw new RemoteException();
        }
    }

    public final void a(com.google.android.gms.a.c c1, ay ay, av av1, String s, em em)
    {
        a(c1, ay, av1, s, null, em);
    }

    public final void a(com.google.android.gms.a.c c1, ay ay, av av1, String s, String s1, em em)
    {
        if (!(a instanceof c))
        {
            (new StringBuilder("MediationAdapter is not a MediationBannerAdapter: ")).append(a.getClass().getCanonicalName());
            throw new RemoteException();
        }
        try
        {
            c c2 = (c)a;
            new et(em);
            f.a(c1);
            int _tmp = av1.g;
            a(s);
            eu.a(ay);
            eu.a(av1);
            h _tmp1 = b;
            c2.d();
            return;
        }
        catch (Throwable throwable)
        {
            throw new RemoteException();
        }
    }

    public final void b()
    {
        if (!(a instanceof d))
        {
            (new StringBuilder("MediationAdapter is not a MediationInterstitialAdapter: ")).append(a.getClass().getCanonicalName());
            throw new RemoteException();
        }
        try
        {
            ((d)a).e();
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
        throw new RemoteException();
    }

    public final void e()
    {
        throw new RemoteException();
    }
}
