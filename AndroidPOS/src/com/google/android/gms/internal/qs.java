// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.SystemClock;

// Referenced classes of package com.google.android.gms.internal:
//            qr

public final class qs
    implements qr
{

    private static qs a;

    public qs()
    {
    }

    public static qr c()
    {
        com/google/android/gms/internal/qs;
        JVM INSTR monitorenter ;
        qs qs1;
        if (a == null)
        {
            a = new qs();
        }
        qs1 = a;
        com/google/android/gms/internal/qs;
        JVM INSTR monitorexit ;
        return qs1;
        Exception exception;
        exception;
        throw exception;
    }

    public final long a()
    {
        return System.currentTimeMillis();
    }

    public final long b()
    {
        return SystemClock.elapsedRealtime();
    }
}
