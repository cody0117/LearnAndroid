// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;

// Referenced classes of package com.google.android.gms.internal:
//            hb, gm, ea, gp, 
//            gf, go, gq, gt, 
//            lq, gk

public final class gj extends hb
    implements ServiceConnection
{

    private final Activity a;
    private final gm b;
    private Context c;
    private gt d;
    private gf e;
    private gk f;
    private gp g;
    private gq h;
    private String i;

    public gj(Activity activity)
    {
        i = null;
        a = activity;
        b = gm.a(a.getApplicationContext());
    }

    public static void a(Context context, boolean flag, ea ea1)
    {
        Intent intent = new Intent();
        intent.setClassName(context, "com.google.android.gms.ads.purchase.InAppPurchaseActivity");
        intent.putExtra("com.google.android.gms.ads.internal.purchase.useClientJar", flag);
        ea.a(intent, ea1);
        context.startActivity(intent);
    }

    private void a(String s, boolean flag, int j, Intent intent)
    {
        if (g != null)
        {
            g.a(s, flag, j, intent, f);
        }
    }

    public final void a()
    {
        ea ea1 = ea.a(a.getIntent());
        g = ea1.e;
        h = ea1.b;
        d = ea1.c;
        e = new gf(a.getApplicationContext());
        c = ea1.d;
        Intent intent;
        if (a.getResources().getConfiguration().orientation == 2)
        {
            a.setRequestedOrientation(6);
        } else
        {
            a.setRequestedOrientation(7);
        }
        intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
        intent.setPackage("com.android.vending");
        a.bindService(intent, this, 1);
    }

    public final void a(int j, int k, Intent intent)
    {
        if (j != 1001) goto _L2; else goto _L1
_L1:
        int l = go.a(intent);
        if (k != -1 || l != 0) goto _L4; else goto _L3
_L3:
        boolean flag1 = h.a(i, intent);
        boolean flag;
        flag = false;
        if (flag1)
        {
            flag = true;
        }
_L5:
        d.b(l);
        a.finish();
        a(d.a(), flag, k, intent);
        i = null;
_L2:
        return;
_L4:
        b.a(f);
        flag = false;
          goto _L5
        RemoteException remoteexception;
        remoteexception;
        a.finish();
        i = null;
        return;
        Exception exception;
        exception;
        i = null;
        throw exception;
    }

    public final void b()
    {
        a.unbindService(this);
        e.a();
    }

    public final void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        e.a(ibinder);
        Bundle bundle;
        PendingIntent pendingintent;
        h;
        i = lq.d();
        bundle = e.a(a.getPackageName(), d.a(), i);
        pendingintent = (PendingIntent)bundle.getParcelable("BUY_INTENT");
        if (pendingintent == null)
        {
            try
            {
                int j = go.a(bundle);
                d.b(j);
                a(d.a(), false, j, null);
                a.finish();
                return;
            }
            catch (RemoteException remoteexception) { }
            catch (android.content.IntentSender.SendIntentException sendintentexception) { }
            break MISSING_BLOCK_LABEL_190;
        }
        f = new gk(d.a(), i);
        b.b(f);
        a.startIntentSenderForResult(pendingintent.getIntentSender(), 1001, new Intent(), Integer.valueOf(0).intValue(), Integer.valueOf(0).intValue(), Integer.valueOf(0).intValue());
        return;
        a.finish();
        return;
    }

    public final void onServiceDisconnected(ComponentName componentname)
    {
        e.a();
    }
}
