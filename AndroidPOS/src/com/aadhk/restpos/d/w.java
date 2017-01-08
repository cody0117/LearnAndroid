// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.restpos.DatabaseActivity;
import com.aadhk.restpos.b.ab;
import com.aadhk.restpos.c.bo;
import com.aadhk.restpos.c.f;

// Referenced classes of package com.aadhk.restpos.d:
//            q

final class w
    implements f
{

    final q a;

    w(q q1)
    {
        a = q1;
        super();
    }

    public final void a()
    {
        (new ab(com.aadhk.restpos.b.f.a().b())).a();
        com.aadhk.restpos.b.f.a().c();
        bo bo1 = new bo(q.a(a));
        bo1.a(q.a(a).getString(0x7f0802c8));
        bo1.show();
    }
}
