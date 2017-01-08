// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Intent;

// Referenced classes of package com.google.android.gms.internal:
//            go, ts, ty, la, 
//            mg, fi

final class tw
    implements Runnable
{

    final Intent a;
    final ts b;

    tw(ts ts1, Intent intent)
    {
        b = ts1;
        a = intent;
        super();
    }

    public final void run()
    {
        if (go.a(a) == 0 && ts.a(b).j != null && ts.a(b).j.b != null && ts.a(b).j.b.d() != null)
        {
            ts.a(b).j.b.d().a();
        }
        ts.a(b).x = false;
    }
}
