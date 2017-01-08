// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.a.f;
import com.google.android.gms.a.h;
import com.google.android.gms.a.i;

// Referenced classes of package com.google.android.gms.internal:
//            hv, gj, he, hb, 
//            hg, gz

public final class hu extends h
{

    private static final hu a = new hu();

    private hu()
    {
        super("com.google.android.gms.ads.InAppPurchaseManagerCreatorImpl");
    }

    public static gz a(Activity activity)
    {
        Intent intent;
        try
        {
            intent = activity.getIntent();
            if (!intent.hasExtra("com.google.android.gms.ads.internal.purchase.useClientJar"))
            {
                throw new hv("InAppPurchaseManager requires the useClientJar flag in intent extras.");
            }
        }
        catch (hv hv1)
        {
            hv1.getMessage();
            return null;
        }
        gz gz;
        if (intent.getBooleanExtra("com.google.android.gms.ads.internal.purchase.useClientJar", false))
        {
            return new gj(activity);
        }
        gz = a.b(activity);
        return gz;
    }

    private gz b(Activity activity)
    {
        gz gz;
        try
        {
            com.google.android.gms.a.c c = f.a(activity);
            gz = hb.a(((he)a(activity)).a(c));
        }
        catch (RemoteException remoteexception)
        {
            return null;
        }
        catch (i j)
        {
            return null;
        }
        return gz;
    }

    protected final Object a(IBinder ibinder)
    {
        return hg.a(ibinder);
    }

}
