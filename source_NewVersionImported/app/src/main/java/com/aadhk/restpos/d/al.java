// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.restpos.MgrItemActivity;
import com.aadhk.restpos.c.i;

// Referenced classes of package com.aadhk.restpos.d:
//            ag, ao

final class al
    implements i
{

    final ag a;

    al(ag ag1)
    {
        a = ag1;
        super();
    }

    public final void a()
    {
        ag.a().b(ag.b(a));
        ag.c(a).notifyDataSetChanged();
        ag.d(a).c();
    }
}
