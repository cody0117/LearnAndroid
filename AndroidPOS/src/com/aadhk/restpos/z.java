// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.aadhk.b.a.c;
import com.aadhk.restpos.util.q;

// Referenced classes of package com.aadhk.restpos:
//            LoginActivity

final class z
    implements c
{

    final LoginActivity a;

    z(LoginActivity loginactivity)
    {
        a = loginactivity;
        super();
    }

    public final void a()
    {
        q.a(a);
        a.finish();
    }
}
