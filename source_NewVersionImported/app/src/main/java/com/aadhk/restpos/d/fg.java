// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.product.library.b.f;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.b.u;
import com.aadhk.restpos.bean.SplitBill;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            ff

final class fg
    implements f
{

    final SplitBill a;
    final int b;
    final ff c;

    fg(ff ff1, SplitBill splitbill, int i)
    {
        c = ff1;
        a = splitbill;
        b = i;
        super();
    }

    public final void a(Object obj)
    {
        a.setAmount(h.d(obj.toString()));
        ff.a(c).b(a);
        ff.b(c).remove(b);
        ff.b(c).add(a);
        c.a();
    }
}
