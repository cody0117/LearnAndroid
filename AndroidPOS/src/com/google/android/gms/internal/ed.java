// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.a.a.b;
import com.google.a.a.h;
import com.google.android.gms.ads.b.a.a;
import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            ef, es, eq, eh

public final class ed extends ef
{

    private Map a;

    public ed()
    {
    }

    private eh c(String s)
    {
        try
        {
            Class class1 = Class.forName(s, false, com/google/android/gms/internal/ed.getClassLoader());
            if (com/google/a/a/b.isAssignableFrom(class1))
            {
                b b1 = (b)class1.newInstance();
                return new es(b1, (h)a.get(b1.b()));
            }
            if (com/google/android/gms/ads/b/b.isAssignableFrom(class1))
            {
                return new eq((com.google.android.gms.ads.b.b)class1.newInstance());
            } else
            {
                (new StringBuilder("Could not instantiate mediation adapter: ")).append(s).append(" (not a valid adapter).");
                throw new RemoteException();
            }
        }
        catch (Throwable throwable)
        {
            (new StringBuilder("Could not instantiate mediation adapter: ")).append(s).append(". ").append(throwable.getMessage());
        }
        throw new RemoteException();
    }

    public final eh a(String s)
    {
        return c(s);
    }

    public final void a(Map map)
    {
        a = map;
    }

    public final boolean b(String s)
    {
        boolean flag;
        try
        {
            flag = com/google/android/gms/ads/b/a/a.isAssignableFrom(Class.forName(s, false, com/google/android/gms/internal/ed.getClassLoader()));
        }
        catch (Throwable throwable)
        {
            (new StringBuilder("Could not load custom event implementation class: ")).append(s).append(", assuming old implementation.");
            return false;
        }
        return flag;
    }
}
