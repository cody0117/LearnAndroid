// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.product.library.b.f;
import com.aadhk.restpos.bean.Table;
import com.aadhk.restpos.f.m;

// Referenced classes of package com.aadhk.restpos.d:
//            fs

final class ft
    implements f
{

    final Table a;
    final fs b;

    ft(fs fs1, Table table)
    {
        b = fs1;
        a = table;
        super();
    }

    public final void a(Object obj)
    {
        fs.a(b, a, m.a((String)obj));
    }
}
