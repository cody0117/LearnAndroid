// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.aadhk.product.library.b.f;
import com.aadhk.product.library.b.k;

// Referenced classes of package com.aadhk.restpos:
//            DatabaseActivity

final class l
    implements f
{

    final k a;
    final DatabaseActivity b;

    l(DatabaseActivity databaseactivity, k k1)
    {
        b = databaseactivity;
        a = k1;
        super();
    }

    public final void a(Object obj)
    {
        DatabaseActivity.a(b, DatabaseActivity.b(b)[((Integer)obj).intValue()]);
        a.dismiss();
    }
}
