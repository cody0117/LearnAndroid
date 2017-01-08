// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.a.d;

// Referenced classes of package com.google.android.gms.internal:
//            ga, gc

public abstract class gb extends Binder
    implements ga
{

    public static ga a(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
        if (iinterface != null && (iinterface instanceof ga))
        {
            return (ga)iinterface;
        } else
        {
            return new gc(ibinder);
        }
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
    {
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
            IBinder ibinder = a(d.a(parcel.readStrongBinder()));
            parcel1.writeNoException();
            parcel1.writeStrongBinder(ibinder);
            return true;
        }
    }
}
