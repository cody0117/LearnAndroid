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
//            eg, ef

final class eh
    implements b
{

    List a;
    final ReportItem b;
    final eg c;

    eh(eg eg1, ReportItem reportitem)
    {
        c = eg1;
        b = reportitem;
        super();
    }

    public final void a()
    {
        a = ef.a(c.h).a(eg.a(c), com.aadhk.restpos.d.eg.b(c), eg.c(c), eg.d(c), b.getId(), "qty desc");
    }

    public final void b()
    {
        (new bk(c.a, a, b.getName(), 6)).show();
    }
}
