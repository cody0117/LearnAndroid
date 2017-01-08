// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;

// Referenced classes of package com.google.android.gms.internal:
//            hm, go, gf, gm, 
//            gk

public final class gl extends hm
    implements ServiceConnection
{

    private boolean a;
    private Context b;
    private int c;
    private Intent d;
    private gf e;
    private gk f;
    private String g;

    public gl(Context context, String s, boolean flag, int i, Intent intent, gk gk)
    {
        a = false;
        g = s;
        c = i;
        d = intent;
        a = flag;
        b = context;
        f = gk;
    }

    public final boolean a()
    {
        return a;
    }

    public final String b()
    {
        return g;
    }

    public final Intent c()
    {
        return d;
    }

    public final int d()
    {
        return c;
    }

    public final void e()
    {
        int i = go.a(d);
        if (c != -1 || i != 0)
        {
            return;
        } else
        {
            e = new gf(b);
            Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
            intent.setPackage("com.android.vending");
            b.bindService(intent, this, 1);
            return;
        }
    }

    public final void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        e.a(ibinder);
        String s = go.b(go.b(d));
        if (s == null)
        {
            return;
        }
        if (e.a(b.getPackageName(), s) == 0)
        {
            gm.a(b).a(f);
        }
        b.unbindService(this);
        e.a();
    }

    public final void onServiceDisconnected(ComponentName componentname)
    {
        e.a();
    }
}
