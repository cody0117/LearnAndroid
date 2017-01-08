// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.w;
import com.aadhk.restpos.c.ax;

// Referenced classes of package com.aadhk.restpos:
//            DatabaseActivity

final class i
    implements com.aadhk.restpos.c.i
{

    final DatabaseActivity a;

    i(DatabaseActivity databaseactivity)
    {
        a = databaseactivity;
        super();
    }

    public final void a()
    {
        (new w(f.a().b())).a();
        f.a().c();
        ax ax1 = new ax(a);
        ax1.a(0x7f09026d);
        ax1.show();
    }
}
