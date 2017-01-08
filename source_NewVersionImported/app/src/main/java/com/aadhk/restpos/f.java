// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.aadhk.restpos.f.d;

// Referenced classes of package com.aadhk.restpos:
//            e, DatabaseActivity

final class f
    implements com.aadhk.product.library.b.f
{

    final String a[];
    final e b;

    f(e e1, String as[])
    {
        b = e1;
        a = as;
        super();
    }

    public final void a(Object obj)
    {
        String s = (new StringBuilder()).append(d.e).append("/").append(a[((Integer)obj).intValue()]).toString();
        DatabaseActivity.a(b.a, s);
    }
}
