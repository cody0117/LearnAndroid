// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.aadhk.product.library.b.f;
import com.aadhk.restpos.b.v;
import com.aadhk.restpos.bean.Table;

// Referenced classes of package com.aadhk.restpos:
//            MgrTableActivity

final class av
    implements f
{

    final MgrTableActivity a;

    av(MgrTableActivity mgrtableactivity)
    {
        a = mgrtableactivity;
        super();
    }

    public final void a(Object obj)
    {
        Table table = new Table();
        table.setName((String)obj);
        MgrTableActivity.a(a).a(table);
        MgrTableActivity.b(a);
    }
}
