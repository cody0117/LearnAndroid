// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.a.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;

// Referenced classes of package com.google.android.a.a:
//            e, g, b, d

public abstract class f extends Binder
    implements e
{

    public static e a(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.android.vending.licensing.ILicensingService");
        if (iinterface != null && (iinterface instanceof e))
        {
            return (e)iinterface;
        } else
        {
            return new g(ibinder);
        }
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
    {
        long l;
        String s;
        IBinder ibinder;
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("com.android.vending.licensing.ILicensingService");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.android.vending.licensing.ILicensingService");
            l = parcel.readLong();
            s = parcel.readString();
            ibinder = parcel.readStrongBinder();
            break;
        }
        Object obj;
        if (ibinder == null)
        {
            obj = null;
        } else
        {
            android.os.IInterface iinterface = ibinder.queryLocalInterface("com.android.vending.licensing.ILicenseResultListener");
            if (iinterface != null && (iinterface instanceof b))
            {
                obj = (b)iinterface;
            } else
            {
                obj = new d(ibinder);
            }
        }
        a(l, s, ((b) (obj)));
        return true;
    }
}
