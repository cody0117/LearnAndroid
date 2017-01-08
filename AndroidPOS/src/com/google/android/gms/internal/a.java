// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            e, mg

final class a
    implements e
{

    private mg a;

    public a(mg mg1)
    {
        a = mg1;
    }

    public final void a(boolean flag)
    {
        HashMap hashmap = new HashMap();
        String s;
        if (flag)
        {
            s = "1";
        } else
        {
            s = "0";
        }
        hashmap.put("isVisible", s);
        a.a("onAdVisibilityChanged", hashmap);
    }
}
