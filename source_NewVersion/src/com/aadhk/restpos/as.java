// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.aadhk.product.library.b.f;
import com.aadhk.restpos.b.v;
import com.aadhk.restpos.bean.Table;

// Referenced classes of package com.aadhk.restpos:
//            MgrTableActivity

final class as
    implements f
{

    final Table a;
    final MgrTableActivity b;

    as(MgrTableActivity mgrtableactivity, Table table)
    {
        b = mgrtableactivity;
        a = table;
        super();
    }

    public final void a(Object obj)
    {
        a.setName((String)obj);
        MgrTableActivity.a(b).b(a);
        MgrTableActivity.b(b);
    }
}
