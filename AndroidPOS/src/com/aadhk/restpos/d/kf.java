// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.product.library.b.f;
import com.aadhk.restpos.bean.Table;
import com.aadhk.restpos.util.v;

// Referenced classes of package com.aadhk.restpos.d:
//            ke

final class kf
    implements f
{

    final Table a;
    final ke b;

    kf(ke ke1, Table table)
    {
        b = ke1;
        a = table;
        super();
    }

    public final void a(Object obj)
    {
        ke.a(b, a, v.a((String)obj));
    }
}
