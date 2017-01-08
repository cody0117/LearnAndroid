// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            h

final class j
    implements Runnable
{

    final JSONObject a;
    final h b;

    j(h h1, JSONObject jsonobject)
    {
        b = h1;
        a = jsonobject;
        super();
    }

    public final void run()
    {
        b.a(a);
    }
}
