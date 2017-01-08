// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.aadhk.product.library.b.f;

// Referenced classes of package com.aadhk.restpos:
//            DatabaseActivity

final class m
    implements f
{

    final DatabaseActivity a;

    m(DatabaseActivity databaseactivity)
    {
        a = databaseactivity;
        super();
    }

    public final void a(Object obj)
    {
        DatabaseActivity.b(a, ((Integer)obj).intValue());
        if (DatabaseActivity.c(a) == 0)
        {
            DatabaseActivity.d(a);
        } else
        {
            if (DatabaseActivity.c(a) == 1)
            {
                DatabaseActivity.e(a);
                return;
            }
            if (DatabaseActivity.c(a) == 2)
            {
                com.aadhk.restpos.DatabaseActivity.f(a);
                return;
            }
        }
    }
}
