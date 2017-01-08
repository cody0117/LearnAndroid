// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Intent;
import android.os.RemoteException;

// Referenced classes of package com.google.android.gms.internal:
//            gg, gk, gq, gl, 
//            ho

final class gh
    implements Runnable
{

    final gk a;
    final Intent b;
    final gg c;

    gh(gg gg1, gk gk1, Intent intent)
    {
        c = gg1;
        a = gk1;
        b = intent;
        super();
    }

    public final void run()
    {
        try
        {
            if (gg.a(c).a(a.b, b))
            {
                gg.c(c).a(new gl(gg.b(c), a.c, true, -1, b, a));
                return;
            }
        }
        catch (RemoteException remoteexception)
        {
            return;
        }
        gg.c(c).a(new gl(gg.b(c), a.c, false, -1, b, a));
        return;
    }
}
