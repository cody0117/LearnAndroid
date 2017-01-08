// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.aadhk.restpos.c.i;

// Referenced classes of package com.aadhk.restpos:
//            e, DatabaseActivity

final class g
    implements i
{

    final com.aadhk.restpos.c.g a;
    final e b;

    g(e e1, com.aadhk.restpos.c.g g1)
    {
        b = e1;
        a = g1;
        super();
    }

    public final void a()
    {
        if (DatabaseActivity.c(b.a) != 1) goto _L2; else goto _L1
_L1:
        com.aadhk.restpos.DatabaseActivity.i(b.a);
_L4:
        a.dismiss();
        return;
_L2:
        if (DatabaseActivity.c(b.a) == 2)
        {
            DatabaseActivity.j(b.a);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
