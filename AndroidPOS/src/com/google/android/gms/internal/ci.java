// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.a.c;

// Referenced classes of package com.google.android.gms.internal:
//            ch

public abstract class ci extends Binder
    implements ch
{

    public ci()
    {
        attachInterface(this, "com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
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
            parcel1.writeString("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
            a(parcel.readInt());
            parcel1.writeNoException();
            return true;

        case 2: // '\002'
            parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
            i();
            parcel1.writeNoException();
            return true;

        case 3: // '\003'
            parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
            String s4 = a();
            parcel1.writeNoException();
            parcel1.writeString(s4);
            return true;

        case 4: // '\004'
            parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
            c c2 = b();
            parcel1.writeNoException();
            IBinder ibinder1 = null;
            if (c2 != null)
            {
                ibinder1 = c2.asBinder();
            }
            parcel1.writeStrongBinder(ibinder1);
            return true;

        case 5: // '\005'
            parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
            String s3 = c();
            parcel1.writeNoException();
            parcel1.writeString(s3);
            return true;

        case 6: // '\006'
            parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
            c c1 = d();
            parcel1.writeNoException();
            IBinder ibinder = null;
            if (c1 != null)
            {
                ibinder = c1.asBinder();
            }
            parcel1.writeStrongBinder(ibinder);
            return true;

        case 7: // '\007'
            parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
            String s2 = e();
            parcel1.writeNoException();
            parcel1.writeString(s2);
            return true;

        case 8: // '\b'
            parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
            double d = f();
            parcel1.writeNoException();
            parcel1.writeDouble(d);
            return true;

        case 9: // '\t'
            parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
            String s1 = g();
            parcel1.writeNoException();
            parcel1.writeString(s1);
            return true;

        case 10: // '\n'
            parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
            String s = h();
            parcel1.writeNoException();
            parcel1.writeString(s);
            return true;
        }
    }
}
