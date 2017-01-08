// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            cz, h, mg

final class o
    implements cz
{

    final h a;

    o(h h1)
    {
        a = h1;
        super();
    }

    public final void a(mg mg, Map map)
    {
        while (!a.a(map) || !map.containsKey("isVisible")) 
        {
            return;
        }
        boolean flag;
        Boolean boolean1;
        if ("1".equals(map.get("isVisible")) || "true".equals(map.get("isVisible")))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        boolean1 = Boolean.valueOf(flag);
        a.a(boolean1.booleanValue());
    }
}
