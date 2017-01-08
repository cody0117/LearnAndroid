// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            px, kn, mg

final class ki
    implements Runnable
{

    final kn a;

    ki(kn kn1)
    {
        a = kn1;
        super();
    }

    public final void run()
    {
        kn kn1 = a;
        px.b("destroyAdWebView must be called on the main thread.");
        if (kn1.a != null)
        {
            kn1.a.destroy();
            kn1.a = null;
        }
    }
}
