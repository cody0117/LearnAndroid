// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.View;
import com.aadhk.restpos.SplitBillActivity;
import com.aadhk.restpos.b.u;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.SplitBill;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            fk, ff

final class fl
    implements android.view.View.OnClickListener
{

    final int a;
    final SplitBill b;
    final fk c;

    fl(fk fk1, int i, SplitBill splitbill)
    {
        c = fk1;
        a = i;
        b = splitbill;
        super();
    }

    public final void onClick(View view)
    {
        ff.b(c.a).remove(a);
        ff.a(c.a).a(b.getId(), ff.c(c.a).getId(), ff.b(c.a).isEmpty());
        if (ff.b(c.a).isEmpty())
        {
            ff.c(c.a).setSplitType((short)0);
        }
        c.a.a();
        if (ff.i(c.a) == 2)
        {
            ff.h(c.a).a();
        }
    }
}
