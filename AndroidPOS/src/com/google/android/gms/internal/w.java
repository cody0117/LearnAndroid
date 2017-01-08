// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            v, mg

final class w
    implements Runnable
{

    final String a;
    final JSONObject b;
    final v c;

    w(v v1, String s, JSONObject jsonobject)
    {
        c = v1;
        a = s;
        b = jsonobject;
        super();
    }

    public final void run()
    {
        v.a(c).a(a, b);
    }
}
