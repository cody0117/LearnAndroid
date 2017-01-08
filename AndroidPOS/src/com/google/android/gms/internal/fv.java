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
//            fw, fi, ga, fy, 
//            gb, fx

public final class fv extends h
{

    private static final fv a = new fv();

    private fv()
    {
        super("com.google.android.gms.ads.AdOverlayCreatorImpl");
    }

    public static fx a(Activity activity)
    {
        Intent intent;
        try
        {
            intent = activity.getIntent();
            if (!intent.hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar"))
            {
                throw new fw("Ad overlay requires the useClientJar flag in intent extras.");
            }
        }
        catch (fw fw1)
        {
            fw1.getMessage();
            return null;
        }
        fx fx;
        if (intent.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false))
        {
            return new fi(activity);
        }
        fx = a.b(activity);
        return fx;
    }

    private fx b(Activity activity)
    {
        fx fx;
        try
        {
            com.google.android.gms.a.c c = f.a(activity);
            fx = fy.a(((ga)a(activity)).a(c));
        }
        catch (RemoteException remoteexception)
        {
            return null;
        }
        catch (i j)
        {
            return null;
        }
        return fx;
    }

    protected final Object a(IBinder ibinder)
    {
        return gb.a(ibinder);
    }

}
