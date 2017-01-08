// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.google.android.gms.tagmanager:
//            av, an, as, aq

final class at
    implements av
{

    final Map a;
    final Map b;
    final Map c;
    final Map d;
    final as e;

    at(as as, Map map, Map map1, Map map2, Map map3)
    {
        e = as;
        a = map;
        b = map1;
        c = map2;
        d = map3;
        super();
    }

    public final void a(aq aq, Set set, Set set1, an an1)
    {
        List list = (List)a.get(aq);
        b.get(aq);
        if (list != null)
        {
            set.addAll(list);
            an1.c();
        }
        List list1 = (List)c.get(aq);
        d.get(aq);
        if (list1 != null)
        {
            set1.addAll(list1);
            an1.d();
        }
    }
}
