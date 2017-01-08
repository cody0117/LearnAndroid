// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.a.d;

// Referenced classes of package com.google.android.gms.internal:
//            bw

public abstract class bx extends Binder
    implements bw
{

    public bx()
    {
        attachInterface(this, "com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
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
            parcel1.writeString("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
            String s1 = a();
            parcel1.writeNoException();
            parcel1.writeString(s1);
            return true;

        case 2: // '\002'
            parcel.enforceInterface("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
            String s = b();
            parcel1.writeNoException();
            parcel1.writeString(s);
            return true;

        case 3: // '\003'
            parcel.enforceInterface("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
            a(d.a(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 4: // '\004'
            parcel.enforceInterface("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
            c();
            parcel1.writeNoException();
            return true;

        case 5: // '\005'
            parcel.enforceInterface("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
            d();
            parcel1.writeNoException();
            return true;
        }
    }
}
