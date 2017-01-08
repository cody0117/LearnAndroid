// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.analytics;


// Referenced classes of package com.google.android.gms.analytics:
//            e, a, b

public class d
{

    private static a a;
    private static volatile boolean b = false;
    private static b c;

    private d()
    {
    }

    private static b a()
    {
        com/google/android/gms/analytics/d;
        JVM INSTR monitorenter ;
        b b2;
        if (!b)
        {
            break MISSING_BLOCK_LABEL_34;
        }
        if (c == null)
        {
            c = new e();
        }
        b2 = c;
        com/google/android/gms/analytics/d;
        JVM INSTR monitorexit ;
        return b2;
        b b1;
        if (a == null)
        {
            a = com.google.android.gms.analytics.a.a();
        }
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_70;
        }
        b1 = a.b();
        com/google/android/gms/analytics/d;
        JVM INSTR monitorexit ;
        return b1;
        Exception exception;
        exception;
        throw exception;
        com/google/android/gms/analytics/d;
        JVM INSTR monitorexit ;
        return null;
    }

    public static void a(String s)
    {
        b b1 = a();
        if (b1 != null)
        {
            b1.b(s);
        }
    }

    public static void b(String s)
    {
        b b1 = a();
        if (b1 != null)
        {
            b1.a(s);
        }
    }

}
