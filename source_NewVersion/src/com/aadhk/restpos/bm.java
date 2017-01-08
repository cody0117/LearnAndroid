// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.aadhk.a.h;
import com.aadhk.a.k;
import com.aadhk.a.m;
import com.aadhk.b.a;
import com.aadhk.b.b;
import com.aadhk.restpos.d.dh;
import com.bugsense.trace.BugSenseHandler;

// Referenced classes of package com.aadhk.restpos:
//            PrinterActivity

final class bm
    implements h
{

    final PrinterActivity a;

    bm(PrinterActivity printeractivity)
    {
        a = printeractivity;
        super();
    }

    public final void a(k k1, m m)
    {
        if (!k1.b())
        {
            try
            {
                b.a(a, m);
                if (PrinterActivity.c(a).e())
                {
                    PrinterActivity.c(a).a();
                    a.finish();
                    return;
                }
            }
            catch (a a1)
            {
                BugSenseHandler.sendException(a1);
                a1.printStackTrace();
                return;
            }
        }
    }
}
