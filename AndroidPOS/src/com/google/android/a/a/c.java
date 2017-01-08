// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.a.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;

// Referenced classes of package com.google.android.a.a:
//            b

public abstract class c extends Binder
    implements b
{

    public c()
    {
        attachInterface(this, "com.android.vending.licensing.ILicenseResultListener");
    }

    public IBinder asBinder()
    {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
    {
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("com.android.vending.licensing.ILicenseResultListener");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.android.vending.licensing.ILicenseResultListener");
            a(parcel.readInt(), parcel.readString(), parcel.readString());
            return true;
        }
    }
}
