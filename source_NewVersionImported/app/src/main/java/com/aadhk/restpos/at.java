// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.res.Resources;
import com.aadhk.product.library.b.g;
import com.aadhk.restpos.b.m;
import com.aadhk.restpos.b.v;
import com.aadhk.restpos.bean.Table;
import com.aadhk.restpos.c.ax;

// Referenced classes of package com.aadhk.restpos:
//            MgrTableActivity

final class at
    implements g
{

    final Table a;
    final MgrTableActivity b;

    at(MgrTableActivity mgrtableactivity, Table table)
    {
        b = mgrtableactivity;
        a = table;
        super();
    }

    public final void a()
    {
        String s = (new StringBuilder(" rowid=")).append(a.getId()).toString();
        if (MgrTableActivity.c(b).a(s))
        {
            ax ax1 = new ax(b);
            ax1.a(b.b.getString(0x7f0900bd));
            ax1.show();
            return;
        } else
        {
            MgrTableActivity.a(b).a(a.getId());
            MgrTableActivity.b(b);
            return;
        }
    }
}
