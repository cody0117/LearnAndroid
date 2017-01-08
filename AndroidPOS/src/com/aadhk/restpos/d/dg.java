// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.product.library.b.f;

// Referenced classes of package com.aadhk.restpos.d:
//            db

final class dg
    implements f
{

    final String a[];
    final db b;

    dg(db db1, String as[])
    {
        b = db1;
        a = as;
        super();
    }

    public final void a(Object obj)
    {
        String s = (new StringBuilder()).append(com.aadhk.restpos.util.f.d).append("/").append(a[((Integer)obj).intValue()]).toString();
        db.a(b, s);
    }
}
