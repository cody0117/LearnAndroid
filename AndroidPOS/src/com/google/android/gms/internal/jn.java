// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.RemoteException;

// Referenced classes of package com.google.android.gms.internal:
//            lk, ju, lf, fj, 
//            jm, fh

public abstract class jn extends lk
{

    private final fh a;
    private final jm b;

    public jn(fh fh, jm jm1)
    {
        a = fh;
        b = jm1;
    }

    private static fj a(ju ju1, fh fh)
    {
        fj fj1;
        try
        {
            fj1 = ju1.a(fh);
        }
        catch (RemoteException remoteexception)
        {
            return null;
        }
        catch (NullPointerException nullpointerexception)
        {
            return null;
        }
        catch (SecurityException securityexception)
        {
            return null;
        }
        catch (Throwable throwable)
        {
            lf.a(throwable);
            return null;
        }
        return fj1;
    }

    public final void a()
    {
        ju ju1 = d();
        if (ju1 != null) goto _L2; else goto _L1
_L1:
        fj fj1 = new fj(0);
_L4:
        c();
        b.a(fj1);
        return;
_L2:
        fj1 = a(ju1, a);
        if (fj1 != null) goto _L4; else goto _L3
_L3:
        fj1 = new fj(0);
          goto _L4
        Exception exception;
        exception;
        c();
        throw exception;
    }

    public abstract void c();

    public abstract ju d();

    public final void u_()
    {
        c();
    }
}
