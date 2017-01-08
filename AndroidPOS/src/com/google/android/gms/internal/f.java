// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            gs

public final class f
{

    private final String a;
    private final JSONObject b;
    private final String c;
    private final String d;

    public f(String s, gs gs1, String s1, JSONObject jsonobject)
    {
        d = gs1.b;
        b = jsonobject;
        c = s;
        a = s1;
    }

    public final String a()
    {
        return a;
    }

    public final String b()
    {
        return d;
    }

    public final JSONObject c()
    {
        return b;
    }

    public final String d()
    {
        return c;
    }
}
