// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.api.c;

// Referenced classes of package com.google.android.gms.internal:
//            dj, bt, dk, di

public final class dh
    implements b, c
{

    private final di a;
    private final dj b;
    private final Object c;

    public dh(Context context, di di1)
    {
        this(context, di1, (byte)0);
    }

    private dh(Context context, di di1, byte byte0)
    {
        c = new Object();
        a = di1;
        b = new dj(context, this, this);
        b.d();
    }

    public final void b()
    {
        android.os.Bundle bundle = bt.a();
        Object obj = c;
        obj;
        JVM INSTR monitorenter ;
        dk dk1 = b.c();
        if (dk1 == null)
        {
            break MISSING_BLOCK_LABEL_37;
        }
        android.os.Bundle bundle1 = dk1.a();
        bundle = bundle1;
        if (b.e() || b.f())
        {
            b.g();
        }
_L2:
        obj;
        JVM INSTR monitorexit ;
        a.a(bundle);
        return;
        IllegalStateException illegalstateexception;
        illegalstateexception;
        if (!b.e() && !b.f()) goto _L2; else goto _L1
_L1:
        b.g();
          goto _L2
        Exception exception1;
        exception1;
        throw exception1;
        RemoteException remoteexception;
        remoteexception;
        if (!b.e() && !b.f()) goto _L2; else goto _L3
_L3:
        b.g();
          goto _L2
        Exception exception;
        exception;
        if (b.e() || b.f())
        {
            b.g();
        }
        throw exception;
    }

    public final void t_()
    {
        a.a(bt.a());
    }
}
