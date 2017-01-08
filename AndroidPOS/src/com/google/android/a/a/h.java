// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.a.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.util.Queue;
import java.util.Set;

// Referenced classes of package com.google.android.a.a:
//            n, m, f, i, 
//            e

public final class h
    implements ServiceConnection
{

    private static final SecureRandom a = new SecureRandom();
    private e b;
    private PublicKey c;
    private final Context d;
    private final n e;
    private Handler f;
    private final Set g;
    private final Queue h;

    static Handler a(h h1)
    {
        return h1.f;
    }

    static void a(h h1, m m1)
    {
        h1.b(m1);
    }

    private void a(m m1)
    {
        this;
        JVM INSTR monitorenter ;
        g.remove(m1);
        if (g.isEmpty())
        {
            b();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static Set b(h h1)
    {
        return h1.g;
    }

    private void b()
    {
        if (b != null)
        {
            try
            {
                d.unbindService(this);
            }
            catch (IllegalArgumentException illegalargumentexception) { }
            b = null;
        }
    }

    static void b(h h1, m m1)
    {
        h1.a(m1);
    }

    private void b(m m1)
    {
        this;
        JVM INSTR monitorenter ;
        e;
        if (!e.a()) goto _L2; else goto _L1
_L1:
        m1.a();
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        m1.a();
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    static PublicKey c(h h1)
    {
        return h1.c;
    }

    public final void a()
    {
        this;
        JVM INSTR monitorenter ;
        b();
        f.getLooper().quit();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        this;
        JVM INSTR monitorenter ;
        b = com.google.android.a.a.f.a(ibinder);
_L1:
        m m1 = (m)h.poll();
        if (m1 != null)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        (new StringBuilder("Calling checkLicense on service for ")).append(m1.c());
        b.a(m1.b(), m1.c(), new i(this, m1));
        g.add(m1);
          goto _L1
        RemoteException remoteexception;
        remoteexception;
        b(m1);
          goto _L1
        Exception exception;
        exception;
        throw exception;
    }

    public final void onServiceDisconnected(ComponentName componentname)
    {
        this;
        JVM INSTR monitorenter ;
        b = null;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

}
