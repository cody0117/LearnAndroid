// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import java.util.Set;

// Referenced classes of package com.google.android.gms.tagmanager:
//            av, aq, an, as

final class au
    implements av
{

    final as a;

    au(as as)
    {
        a = as;
        super();
    }

    public final void a(aq aq1, Set set, Set set1, an an1)
    {
        set.addAll(aq1.c());
        set1.addAll(aq1.d());
        an1.e();
        aq1.c();
        aq1.e();
        an1.f();
        aq1.d();
        aq1.f();
    }
}
