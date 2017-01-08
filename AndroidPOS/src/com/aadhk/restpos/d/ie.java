// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.product.library.b.f;
import com.aadhk.restpos.ReservationActivity;
import com.aadhk.restpos.bean.Reservation;
import com.aadhk.restpos.bean.Table;

// Referenced classes of package com.aadhk.restpos.d:
//            ia

final class ie
    implements f
{

    final Reservation a;
    final ia b;

    ie(ia ia1, Reservation reservation)
    {
        b = ia1;
        a = reservation;
        super();
    }

    public final void a(Object obj)
    {
        Table table = (Table)obj;
        a.setTableId((int)table.getId());
        a.setTableName(table.getName());
        ia.c(b).b(a);
        ia.a(b, a.getId());
    }
}
