// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.product.library.b.f;
import com.aadhk.restpos.f.d;

// Referenced classes of package com.aadhk.restpos.d:
//            ag

final class ai
    implements f
{

    final String a[];
    final ag b;

    ai(ag ag1, String as[])
    {
        b = ag1;
        a = as;
        super();
    }

    public final void a(Object obj)
    {
        String s = (new StringBuilder()).append(d.d).append("/").append(a[((Integer)obj).intValue()]).toString();
        ag.a(b, s);
    }
}
