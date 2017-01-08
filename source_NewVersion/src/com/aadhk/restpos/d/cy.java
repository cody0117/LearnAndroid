// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.EditText;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.bean.PriceSchedule;
import com.aadhk.restpos.f.i;

// Referenced classes of package com.aadhk.restpos.d:
//            cw

final class cy
    implements f
{

    final cw a;

    cy(cw cw1)
    {
        a = cw1;
        super();
    }

    public final void a(Object obj)
    {
        cw.d(a).setText(i.d(obj.toString(), cw.a(a)));
        cw.c(a).setEndDate(obj.toString());
    }
}
