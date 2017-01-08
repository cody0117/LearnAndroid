// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.webkit.ValueCallback;

// Referenced classes of package com.google.android.gms.internal:
//            af, ad

final class ag
    implements ValueCallback
{

    final af a;

    ag(af af1)
    {
        a = af1;
        super();
    }

    public final void onReceiveValue(Object obj)
    {
        String s = (String)obj;
        a.d.a(a.b, a.c, s);
    }
}
