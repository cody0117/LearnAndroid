// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Button;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.bean.Reservation;
import com.aadhk.restpos.bean.Table;

// Referenced classes of package com.aadhk.restpos.d:
//            hu

final class hv
    implements f
{

    final hu a;

    hv(hu hu1)
    {
        a = hu1;
        super();
    }

    public final void a(Object obj)
    {
        Table table = (Table)obj;
        hu.a(a).setText(table.getName());
        hu.b(a).setTableId((int)table.getId());
        hu.b(a).setTableName(table.getName());
    }
}
