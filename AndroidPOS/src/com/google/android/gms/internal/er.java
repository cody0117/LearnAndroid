// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.b.d;
import com.google.android.gms.ads.b.f;

// Referenced classes of package com.google.android.gms.internal:
//            px, em

public final class er
    implements d, f
{

    private final em a;

    public er(em em1)
    {
        a = em1;
    }

    public final void a()
    {
        px.b("onAdLoaded must be called on the main UI thread.");
        try
        {
            a.e();
            return;
        }
        catch (RemoteException remoteexception)
        {
            return;
        }
    }

    public final void a(int j)
    {
        px.b("onAdFailedToLoad must be called on the main UI thread.");
        (new StringBuilder("Adapter called onAdFailedToLoad with error. ")).append(j);
        try
        {
            a.a(j);
            return;
        }
        catch (RemoteException remoteexception)
        {
            return;
        }
    }

    public final void b()
    {
        px.b("onAdOpened must be called on the main UI thread.");
        try
        {
            a.d();
            return;
        }
        catch (RemoteException remoteexception)
        {
            return;
        }
    }

    public final void b(int j)
    {
        px.b("onAdFailedToLoad must be called on the main UI thread.");
        (new StringBuilder("Adapter called onAdFailedToLoad with error ")).append(j).append(".");
        try
        {
            a.a(j);
            return;
        }
        catch (RemoteException remoteexception)
        {
            return;
        }
    }

    public final void c()
    {
        px.b("onAdClosed must be called on the main UI thread.");
        try
        {
            a.b();
            return;
        }
        catch (RemoteException remoteexception)
        {
            return;
        }
    }

    public final void d()
    {
        px.b("onAdLeftApplication must be called on the main UI thread.");
        try
        {
            a.c();
            return;
        }
        catch (RemoteException remoteexception)
        {
            return;
        }
    }

    public final void e()
    {
        px.b("onAdClicked must be called on the main UI thread.");
        try
        {
            a.a();
            return;
        }
        catch (RemoteException remoteexception)
        {
            return;
        }
    }

    public final void f()
    {
        px.b("onAdLoaded must be called on the main UI thread.");
        try
        {
            a.e();
            return;
        }
        catch (RemoteException remoteexception)
        {
            return;
        }
    }

    public final void g()
    {
        px.b("onAdOpened must be called on the main UI thread.");
        try
        {
            a.d();
            return;
        }
        catch (RemoteException remoteexception)
        {
            return;
        }
    }

    public final void h()
    {
        px.b("onAdClosed must be called on the main UI thread.");
        try
        {
            a.b();
            return;
        }
        catch (RemoteException remoteexception)
        {
            return;
        }
    }

    public final void i()
    {
        px.b("onAdLeftApplication must be called on the main UI thread.");
        try
        {
            a.c();
            return;
        }
        catch (RemoteException remoteexception)
        {
            return;
        }
    }
}
