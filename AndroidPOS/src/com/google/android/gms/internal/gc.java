// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.a.c;

// Referenced classes of package com.google.android.gms.internal:
//            ga

final class gc
    implements ga
{

    private IBinder a;

    gc(IBinder ibinder)
    {
        a = ibinder;
    }

    public final IBinder a(c c1)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
        if (c1 == null)
        {
            break MISSING_BLOCK_LABEL_67;
        }
        IBinder ibinder = c1.asBinder();
_L1:
        IBinder ibinder1;
        parcel.writeStrongBinder(ibinder);
        a.transact(1, parcel, parcel1, 0);
        parcel1.readException();
        ibinder1 = parcel1.readStrongBinder();
        parcel1.recycle();
        parcel.recycle();
        return ibinder1;
        ibinder = null;
          goto _L1
        Exception exception;
        exception;
        parcel1.recycle();
        parcel.recycle();
        throw exception;
    }

    public final IBinder asBinder()
    {
        return a;
    }
}
