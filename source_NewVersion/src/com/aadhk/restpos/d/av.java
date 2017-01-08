// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.product.library.b.f;
import com.aadhk.restpos.bean.Modifier;
import com.aadhk.restpos.c.t;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            au, bb

final class av
    implements f
{

    final t a;
    final au b;

    av(au au1, t t1)
    {
        b = au1;
        a = t1;
        super();
    }

    public final void a(Object obj)
    {
        Modifier modifier = (Modifier)obj;
        au.a(b).remove(modifier);
        au.a(b).add(modifier);
        au.b(b).notifyDataSetChanged();
        a.dismiss();
    }
}
