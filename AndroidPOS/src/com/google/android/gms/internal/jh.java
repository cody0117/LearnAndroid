// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            jc, fj, mg, mi, 
//            iy

final class jh
    implements Runnable
{

    final iy a;
    final jc b;

    jh(jc jc1, iy iy1)
    {
        b = jc1;
        a = iy1;
        super();
    }

    public final void run()
    {
label0:
        {
            synchronized (jc.a(b))
            {
                if (jc.c(b).e == -2)
                {
                    break label0;
                }
            }
            return;
        }
        jc.d(b).f().a(b);
        a.a(jc.c(b));
        obj;
        JVM INSTR monitorexit ;
    }
}
