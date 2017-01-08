// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.a.d;

// Referenced classes of package com.google.android.gms.internal:
//            bf, bh, ay, at, 
//            ee, eg

public abstract class bg extends Binder
    implements bf
{

    public static bf a(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
        if (iinterface != null && (iinterface instanceof bf))
        {
            return (bf)iinterface;
        } else
        {
            return new bh(ibinder);
        }
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
    {
        com.google.android.gms.a.c c;
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("com.google.android.gms.ads.internal.client.IAdManagerCreator");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
            c = d.a(parcel.readStrongBinder());
            break;
        }
        ay ay1;
        String s;
        IBinder ibinder;
        Object obj;
        IBinder ibinder1;
        if (parcel.readInt() != 0)
        {
            at _tmp = ay.CREATOR;
            ay1 = at.a(parcel);
        } else
        {
            ay1 = null;
        }
        s = parcel.readString();
        ibinder = parcel.readStrongBinder();
        if (ibinder == null)
        {
            obj = null;
        } else
        {
            android.os.IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
            if (iinterface != null && (iinterface instanceof ee))
            {
                obj = (ee)iinterface;
            } else
            {
                obj = new eg(ibinder);
            }
        }
        ibinder1 = a(c, ay1, s, ((ee) (obj)), parcel.readInt());
        parcel1.writeNoException();
        parcel1.writeStrongBinder(ibinder1);
        return true;
    }
}
