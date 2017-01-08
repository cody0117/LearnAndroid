// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;

// Referenced classes of package com.google.android.gms.internal:
//            ay, fh, mg, px, 
//            kn, mi, cp, mk

final class kh
    implements Runnable
{

    final Context a;
    final fh b;
    final kn c;
    final mk d;
    final String e;

    kh(Context context, fh fh1, kn kn1, mk mk, String s)
    {
        a = context;
        b = fh1;
        c = kn1;
        d = mk;
        e = s;
        super();
    }

    public final void run()
    {
        mg mg1 = mg.a(a, new ay(), false, false, null, b.k);
        mg1.setWillNotDraw(true);
        kn kn1 = c;
        px.b("setAdWebView must be called on the main thread.");
        kn1.a = mg1;
        mi mi1 = mg1.f();
        mi1.a("/invalidRequest", c.b);
        mi1.a("/loadAdURL", c.c);
        mi1.a("/log", cp.h);
        mi1.a(d);
        mg1.loadUrl(e);
    }
}
