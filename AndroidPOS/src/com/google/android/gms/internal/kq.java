// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            cz, kn, lt, ku, 
//            mg, lj

final class kq
    implements cz
{

    final kn a;

    kq(kn kn1)
    {
        a = kn1;
        super();
    }

    public final void a(mg mg1, Map map)
    {
        ku ku1;
        String s;
label0:
        {
            synchronized (kn.a(a))
            {
                if (!kn.b(a).isDone())
                {
                    break label0;
                }
            }
            return;
        }
        ku1 = new ku(-2, map);
        s = ku1.d();
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_60;
        }
        obj;
        JVM INSTR monitorexit ;
        return;
        if (s.contains("%40mediation_adapters%40"))
        {
            String s1 = s.replaceAll("%40mediation_adapters%40", lj.a(mg1.getContext(), (String)map.get("check_adapters"), kn.c(a)));
            ku1.a(s1);
            (new StringBuilder("Ad request URL modified to ")).append(s1);
        }
        kn.b(a).a(ku1);
        obj;
        JVM INSTR monitorexit ;
    }
}
