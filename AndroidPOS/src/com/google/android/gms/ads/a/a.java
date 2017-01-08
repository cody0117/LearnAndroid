// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.ads.a;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import com.google.android.gms.common.d;
import com.google.android.gms.common.f;
import com.google.android.gms.common.h;
import com.google.android.gms.internal.px;
import com.google.android.gms.internal.to;
import com.google.android.gms.internal.tp;
import java.io.IOException;

// Referenced classes of package com.google.android.gms.ads.a:
//            c, b

public final class a
{

    h a;
    to b;
    boolean c;
    Object d;
    c e;
    final long f;
    private final Context g;

    public a(Context context)
    {
        this(context, (byte)0);
    }

    private a(Context context, byte byte0)
    {
        d = new Object();
        px.a(context);
        g = context;
        c = false;
        f = 30000L;
    }

    private static h a(Context context)
    {
        h h1;
        Intent intent;
        try
        {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            throw new d(9);
        }
        try
        {
            com.google.android.gms.common.f.b(context);
        }
        catch (d d1)
        {
            throw new IOException(d1);
        }
        h1 = new h();
        intent = new Intent("com.google.android.gms.ads.identifier.service.START");
        intent.setPackage("com.google.android.gms");
        if (context.bindService(intent, h1, 1))
        {
            return h1;
        } else
        {
            throw new IOException("Connection failure");
        }
    }

    private static to a(h h1)
    {
        to to1;
        try
        {
            to1 = tp.a(h1.a());
        }
        catch (InterruptedException interruptedexception)
        {
            throw new IOException("Interrupted exception");
        }
        return to1;
    }

    private void a(boolean flag)
    {
        px.c("Calling this from your main thread can lead to deadlock");
        this;
        JVM INSTR monitorenter ;
        if (c)
        {
            c();
        }
        a = a(g);
        g;
        b = a(a);
        c = true;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        d();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void d()
    {
        Object obj = d;
        obj;
        JVM INSTR monitorenter ;
        if (e == null)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        e.a();
        Exception exception;
        try
        {
            e.join();
        }
        catch (InterruptedException interruptedexception) { }
        if (f > 0L)
        {
            e = new c(this, f);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final void a()
    {
        a(true);
    }

    public final b b()
    {
        px.c("Calling this from your main thread can lead to deadlock");
        this;
        JVM INSTR monitorenter ;
        if (c)
        {
            break MISSING_BLOCK_LABEL_102;
        }
        Object obj = d;
        obj;
        JVM INSTR monitorenter ;
        if (e == null || !e.b())
        {
            throw new IOException("AdvertisingIdClient is not connected.");
        }
        break MISSING_BLOCK_LABEL_63;
        Exception exception1;
        exception1;
        obj;
        JVM INSTR monitorexit ;
        throw exception1;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        obj;
        JVM INSTR monitorexit ;
        a(false);
        if (!c)
        {
            throw new IOException("AdvertisingIdClient cannot reconnect.");
        }
        break MISSING_BLOCK_LABEL_102;
        Exception exception2;
        exception2;
        throw new IOException("AdvertisingIdClient cannot reconnect.", exception2);
        px.a(a);
        px.a(b);
        b b1 = new b(b.a(), b.a(true));
        this;
        JVM INSTR monitorexit ;
        d();
        return b1;
        RemoteException remoteexception;
        remoteexception;
        throw new IOException("Remote exception");
    }

    public final void c()
    {
        px.c("Calling this from your main thread can lead to deadlock");
        this;
        JVM INSTR monitorenter ;
        if (g != null && a != null)
        {
            break MISSING_BLOCK_LABEL_24;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        try
        {
            if (c)
            {
                g.unbindService(a);
            }
        }
        catch (IllegalArgumentException illegalargumentexception) { }
        c = false;
        b = null;
        a = null;
        this;
        JVM INSTR monitorexit ;
        return;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected final void finalize()
    {
        c();
    }
}
