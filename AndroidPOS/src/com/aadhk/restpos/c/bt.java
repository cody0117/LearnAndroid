// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.widget.EditText;
import com.aadhk.product.library.b.f;

// Referenced classes of package com.aadhk.restpos.c:
//            bq

final class bt
    implements f
{

    final bq a;

    bt(bq bq1)
    {
        a = bq1;
        super();
    }

    public final void a(Object obj)
    {
        String s = obj.toString();
        bq.c(a).setText(s);
        bq.b(a, s);
    }
}
