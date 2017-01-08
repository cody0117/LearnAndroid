// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.RemoteException;

// Referenced classes of package com.google.android.gms.internal:
//            dz, eh, dq

final class ds
    implements Runnable
{

    final dz a;
    final dq b;

    ds(dq dq, dz dz1)
    {
        b = dq;
        a = dz1;
        super();
    }

    public final void run()
    {
        try
        {
            a.c.c();
            return;
        }
        catch (RemoteException remoteexception)
        {
            return;
        }
    }
}
