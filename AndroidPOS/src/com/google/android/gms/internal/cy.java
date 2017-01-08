// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            cz, mg, qa, le

final class cy
    implements cz
{

    cy()
    {
    }

    public final void a(mg mg1, Map map)
    {
        String s = (String)map.get("tx");
        String s1 = (String)map.get("ty");
        String s2 = (String)map.get("td");
        int i;
        int j;
        int k;
        qa qa1;
        try
        {
            i = Integer.parseInt(s);
            j = Integer.parseInt(s1);
            k = Integer.parseInt(s2);
            qa1 = mg1.h();
        }
        catch (NumberFormatException numberformatexception)
        {
            return;
        }
        if (qa1 == null)
        {
            break MISSING_BLOCK_LABEL_85;
        }
        qa1.a().a(i, j, k);
    }
}
