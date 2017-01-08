// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.a.c;
import com.google.android.gms.a.d;
import com.google.android.gms.a.f;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            gd, gq, gt, gp

public final class ea
    implements SafeParcelable
{

    public static final gd CREATOR = new gd();
    public final int a;
    public final gq b;
    public final gt c;
    public final Context d;
    public final gp e;

    ea(int i, IBinder ibinder, IBinder ibinder1, IBinder ibinder2, IBinder ibinder3)
    {
        a = i;
        b = (gq)f.a(com.google.android.gms.a.d.a(ibinder));
        c = (gt)f.a(com.google.android.gms.a.d.a(ibinder1));
        d = (Context)f.a(com.google.android.gms.a.d.a(ibinder2));
        e = (gp)f.a(com.google.android.gms.a.d.a(ibinder3));
    }

    public ea(Context context, gq gq1, gt gt1, gp gp1)
    {
        a = 2;
        d = context;
        b = gq1;
        c = gt1;
        e = gp1;
    }

    public static ea a(Intent intent)
    {
        ea ea1;
        try
        {
            Bundle bundle = intent.getBundleExtra("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo");
            bundle.setClassLoader(com/google/android/gms/internal/ea.getClassLoader());
            ea1 = (ea)bundle.getParcelable("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo");
        }
        catch (Exception exception)
        {
            return null;
        }
        return ea1;
    }

    public static void a(Intent intent, ea ea1)
    {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo", ea1);
        intent.putExtra("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo", bundle);
    }

    final IBinder a()
    {
        return f.a(e).asBinder();
    }

    final IBinder b()
    {
        return f.a(b).asBinder();
    }

    final IBinder c()
    {
        return f.a(c).asBinder();
    }

    final IBinder d()
    {
        return f.a(d).asBinder();
    }

    public final int describeContents()
    {
        return 0;
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        gd.a(this, parcel);
    }

}
