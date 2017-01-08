// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            cz, dc, mg

public final class db
    implements cz
{

    private final dc a;

    public db(dc dc1)
    {
        a = dc1;
    }

    public final void a(mg mg, Map map)
    {
        boolean flag = "1".equals(map.get("transparentBackground"));
        a.a(flag);
    }
}
