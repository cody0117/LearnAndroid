// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            cz, co, mg

public final class cn
    implements cz
{

    private final co a;

    public cn(co co1)
    {
        a = co1;
    }

    public final void a(mg mg, Map map)
    {
        String s = (String)map.get("name");
        if (s == null)
        {
            return;
        } else
        {
            a.a(s, (String)map.get("info"));
            return;
        }
    }
}
