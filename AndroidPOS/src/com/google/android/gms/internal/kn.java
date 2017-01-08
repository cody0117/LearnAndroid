// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.concurrent.Future;

// Referenced classes of package com.google.android.gms.internal:
//            lt, kp, kq, mg, 
//            cz

public final class kn
{

    mg a;
    public final cz b = new kp(this);
    public final cz c = new kq(this);
    private final Object d = new Object();
    private String e;
    private lt f;

    public kn(String s)
    {
        f = new lt();
        e = s;
    }

    static Object a(kn kn1)
    {
        return kn1.d;
    }

    static lt b(kn kn1)
    {
        return kn1.f;
    }

    static String c(kn kn1)
    {
        return kn1.e;
    }

    public final Future a()
    {
        return f;
    }
}
