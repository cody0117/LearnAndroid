// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            cz, kn, lt, ku, 
//            mg

final class kp
    implements cz
{

    final kn a;

    kp(kn kn1)
    {
        a = kn1;
        super();
    }

    public final void a(mg mg, Map map)
    {
label0:
        {
            ku ku1;
            synchronized (kn.a(a))
            {
                if (!kn.b(a).isDone())
                {
                    break label0;
                }
            }
            return;
        }
        ku1 = new ku(1, map);
        (new StringBuilder("Invalid ")).append(ku1.e()).append(" request error: ").append(ku1.b());
        kn.b(a).a(ku1);
        obj;
        JVM INSTR monitorexit ;
    }
}
