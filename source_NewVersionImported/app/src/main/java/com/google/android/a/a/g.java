// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.a.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;

// Referenced classes of package com.google.android.a.a:
//            f, h, c, e

public abstract class g extends Binder
    implements f
{

    public static f a(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.android.vending.licensing.ILicensingService");
        if (iinterface != null && (iinterface instanceof f))
        {
            return (f)iinterface;
        } else
        {
            return new h(ibinder);
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
            if (iinterface != null && (iinterface instanceof c))
            {
                obj = (c)iinterface;
            } else
            {
                obj = new e(ibinder);
            }
        }
        a(l, s, ((c) (obj)));
        return true;
    }
}
