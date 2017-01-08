// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.a.a.a;
import com.google.a.b;
import com.google.a.c;
import com.google.android.gms.ads.f;
import java.util.Date;
import java.util.HashSet;

// Referenced classes of package com.google.android.gms.internal:
//            av, ay

public final class eu
{

    public static a a(av av1)
    {
        b b1;
        HashSet hashset;
        Date date;
        if (av1.e != null)
        {
            hashset = new HashSet(av1.e);
        } else
        {
            hashset = null;
        }
        date = new Date(av1.b);
        av1.d;
        JVM INSTR tableswitch 1 2: default 56
    //                   1 91
    //                   2 84;
           goto _L1 _L2 _L3
_L1:
        b1 = b.a;
_L5:
        return new a(date, b1, hashset, av1.f, av1.k);
_L3:
        b1 = b.c;
        continue; /* Loop/switch isn't completed */
_L2:
        b1 = b.b;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static c a(ay ay1)
    {
        int i = 0;
        c ac[] = new c[6];
        ac[0] = c.a;
        ac[1] = c.b;
        ac[2] = c.c;
        ac[3] = c.d;
        ac[4] = c.e;
        ac[5] = c.f;
        for (; i < ac.length; i++)
        {
            if (ac[i].a() == ay1.f && ac[i].b() == ay1.c)
            {
                return ac[i];
            }
        }

        return new c(f.a(ay1.f, ay1.c, ay1.b));
    }
}
