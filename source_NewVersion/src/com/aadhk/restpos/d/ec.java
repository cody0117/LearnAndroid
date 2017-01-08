// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.product.library.a.b;
import com.aadhk.restpos.b.n;
import com.aadhk.restpos.bean.ReportItem;
import com.aadhk.restpos.c.bk;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            eb, ea

final class ec
    implements b
{

    List a;
    final ReportItem b;
    final eb c;

    ec(eb eb1, ReportItem reportitem)
    {
        c = eb1;
        b = reportitem;
        super();
    }

    public final void a()
    {
        a = ea.a(c.h).a(eb.a(c), com.aadhk.restpos.d.eb.b(c), eb.c(c), eb.d(c), b.getId(), "amt desc");
    }

    public final void b()
    {
        (new bk(c.a, a, b.getName(), 5)).show();
    }
}
