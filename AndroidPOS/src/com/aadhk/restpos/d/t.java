// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.product.library.b.f;

// Referenced classes of package com.aadhk.restpos.d:
//            s, q

final class t
    implements f
{

    final String a[];
    final s b;

    t(s s1, String as[])
    {
        b = s1;
        a = as;
        super();
    }

    public final void a(Object obj)
    {
        String s1 = (new StringBuilder()).append(com.aadhk.restpos.util.f.e).append("/").append(a[((Integer)obj).intValue()]).toString();
        q.a(b.a, s1);
    }
}
