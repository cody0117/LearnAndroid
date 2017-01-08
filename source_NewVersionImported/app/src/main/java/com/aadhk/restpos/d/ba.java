// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.restpos.c.i;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            au, bb

final class ba
    implements i
{

    final au a;

    ba(au au1)
    {
        a = au1;
        super();
    }

    public final void a()
    {
        au.a(a).clear();
        au.b(a).notifyDataSetChanged();
    }
}
