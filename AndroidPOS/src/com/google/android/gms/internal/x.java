// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            v, mg

final class x
    implements Runnable
{

    final String a;
    final v b;

    x(v v1, String s)
    {
        b = v1;
        a = s;
        super();
    }

    public final void run()
    {
        v.a(b).loadUrl(a);
    }
}
