// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.android.vending.billing.IInAppBillingService;

// Referenced classes of package com.aadhk.a:
//            d, k, i

final class e
    implements ServiceConnection
{

    final d a;
    private final i b;

    e(d d1, i j)
    {
        a = d1;
        b = j;
        super();
    }

    public final void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        if (!a.d) goto _L2; else goto _L1
_L1:
        return;
_L2:
        String s;
        a.c();
        a.j = com.android.vending.billing.IInAppBillingService.Stub.a(ibinder);
        s = a.i.getPackageName();
        int j;
        try
        {
            a.c();
            j = a.j.a(3, s, "inapp");
        }
        catch (RemoteException remoteexception)
        {
            if (b != null)
            {
                b.a(new k(-1001, "RemoteException while setting up in-app billing."));
            }
            remoteexception.printStackTrace();
            return;
        }
        if (j == 0)
        {
            break MISSING_BLOCK_LABEL_142;
        }
        if (b != null)
        {
            b.a(new k(j, "Error checking for billing v3 support."));
        }
        a.f = false;
        return;
        int l;
        d d1 = a;
        (new StringBuilder("In-app billing version 3 supported for ")).append(s);
        d1.c();
        l = a.j.a(3, s, "subs");
        if (l != 0)
        {
            break MISSING_BLOCK_LABEL_240;
        }
        a.c();
        a.f = true;
_L4:
        a.c = true;
        if (b == null) goto _L1; else goto _L3
_L3:
        b.a(new k(0, "Setup successful."));
        return;
        d d2 = a;
        (new StringBuilder("Subscriptions NOT AVAILABLE. Response: ")).append(l);
        d2.c();
          goto _L4
    }

    public final void onServiceDisconnected(ComponentName componentname)
    {
        a.c();
        a.j = null;
    }
}
