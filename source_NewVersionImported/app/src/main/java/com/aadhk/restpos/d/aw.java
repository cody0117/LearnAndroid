// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.product.library.b.g;
import com.aadhk.restpos.b.j;
import com.aadhk.restpos.bean.Modifier;
import com.aadhk.restpos.c.t;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            au, bb

final class aw
    implements g
{

    final Modifier a;
    final t b;
    final au c;

    aw(au au1, Modifier modifier, t t1)
    {
        c = au1;
        a = modifier;
        b = t1;
        super();
    }

    public final void a()
    {
        au.c(c).a(a.getId());
        au.a(c).remove(a);
        au.b(c).notifyDataSetChanged();
        b.dismiss();
    }
}
