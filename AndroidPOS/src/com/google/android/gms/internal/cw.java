// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            cz, md, mg, gs

final class cw
    implements cz
{

    cw()
    {
    }

    public final void a(mg mg1, Map map)
    {
        String s = (String)map.get("u");
        if (s == null)
        {
            return;
        } else
        {
            (new md(mg1.getContext(), mg1.i().b, s)).e();
            return;
        }
    }
}
