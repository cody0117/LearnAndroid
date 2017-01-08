// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.analytics;


// Referenced classes of package com.google.android.gms.analytics:
//            b

final class e
    implements b
{

    private int a;

    e()
    {
        a = 2;
    }

    private static String c(String s)
    {
        return (new StringBuilder()).append(Thread.currentThread().toString()).append(": ").append(s).toString();
    }

    public final void a(String s)
    {
        if (a <= 0)
        {
            c(s);
        }
    }

    public final void b(String s)
    {
        if (a <= 3)
        {
            c(s);
        }
    }
}
