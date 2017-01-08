// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.product.library.b.f;
import com.aadhk.restpos.b.u;
import com.aadhk.restpos.bean.Order;

// Referenced classes of package com.aadhk.restpos.d:
//            ff

final class fh
    implements f
{

    final ff a;

    fh(ff ff1)
    {
        a = ff1;
        super();
    }

    public final void a(Object obj)
    {
        int i = Integer.parseInt((String)obj);
        ff.a(a, ff.a(a, i));
        ff.a(a).a(ff.b(a), ff.c(a).getId());
        ff.c(a).setSplitType((short)1);
        ff.a(a, ff.a(a).b(ff.c(a).getId()));
        a.a();
    }
}
