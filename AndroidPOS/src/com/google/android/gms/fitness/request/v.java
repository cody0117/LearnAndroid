// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.fitness.data.BleDevice;

// Referenced classes of package com.google.android.gms.fitness.request:
//            t, x

public abstract class v extends Binder
    implements t
{

    public static t a(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.fitness.request.IBleScanCallback");
        if (iinterface != null && (iinterface instanceof t))
        {
            return (t)iinterface;
        } else
        {
            return new x(ibinder);
        }
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
    {
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("com.google.android.gms.fitness.request.IBleScanCallback");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.google.android.gms.fitness.request.IBleScanCallback");
            BleDevice bledevice;
            if (parcel.readInt() != 0)
            {
                bledevice = (BleDevice)BleDevice.CREATOR.createFromParcel(parcel);
            } else
            {
                bledevice = null;
            }
            a(bledevice);
            return true;

        case 2: // '\002'
            parcel.enforceInterface("com.google.android.gms.fitness.request.IBleScanCallback");
            a();
            return true;
        }
    }
}
