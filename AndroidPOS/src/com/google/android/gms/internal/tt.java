// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.ComponentCallbacks;
import android.content.res.Configuration;

// Referenced classes of package com.google.android.gms.internal:
//            ts, ty, la, mg

final class tt
    implements ComponentCallbacks
{

    final ts a;

    tt(ts ts1)
    {
        a = ts1;
        super();
    }

    public final void onConfigurationChanged(Configuration configuration)
    {
        if (ts.a(a) != null && ts.a(a).j != null && ts.a(a).j.b != null)
        {
            ts.a(a).j.b.a();
        }
    }

    public final void onLowMemory()
    {
    }
}
