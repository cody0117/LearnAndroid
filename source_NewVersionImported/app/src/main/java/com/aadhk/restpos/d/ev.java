// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.product.library.b.f;
import com.aadhk.restpos.bean.User;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            eu

final class ev
    implements f
{

    final eu a;

    ev(eu eu1)
    {
        a = eu1;
        super();
    }

    public final void a(Object obj)
    {
        int i = ((Integer)obj).intValue();
        if (i > 0)
        {
            User user = (User)eu.a(a).get(i - 1);
            eu.a(a, user.getAccount());
        } else
        {
            eu.a(a, eu.b(a)[0]);
        }
        a.c();
        a.b();
    }
}
