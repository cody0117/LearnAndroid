// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;

// Referenced classes of package com.google.android.gms.internal:
//            ee, eh

public abstract class ef extends Binder
    implements ee
{

    public ef()
    {
        attachInterface(this, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    public IBinder asBinder()
    {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
    {
        boolean flag;
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
            eh eh1 = a(parcel.readString());
            parcel1.writeNoException();
            IBinder ibinder;
            if (eh1 != null)
            {
                ibinder = eh1.asBinder();
            } else
            {
                ibinder = null;
            }
            parcel1.writeStrongBinder(ibinder);
            return true;

        case 2: // '\002'
            parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
            flag = b(parcel.readString());
            parcel1.writeNoException();
            break;
        }
        int k;
        if (flag)
        {
            k = 1;
        } else
        {
            k = 0;
        }
        parcel1.writeInt(k);
        return true;
    }
}
