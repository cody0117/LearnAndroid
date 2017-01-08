// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;

// Referenced classes of package com.google.android.gms.internal:
//            hk

public abstract class hm extends Binder
    implements hk
{

    public hm()
    {
        attachInterface(this, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult");
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
            parcel1.writeString("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult");
            String s = b();
            parcel1.writeNoException();
            parcel1.writeString(s);
            return true;

        case 2: // '\002'
            parcel.enforceInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult");
            Intent intent = c();
            parcel1.writeNoException();
            if (intent != null)
            {
                parcel1.writeInt(1);
                intent.writeToParcel(parcel1, 1);
                return true;
            } else
            {
                parcel1.writeInt(0);
                return true;
            }

        case 3: // '\003'
            parcel.enforceInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult");
            int l = d();
            parcel1.writeNoException();
            parcel1.writeInt(l);
            return true;

        case 4: // '\004'
            parcel.enforceInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult");
            boolean flag = a();
            parcel1.writeNoException();
            int k = 0;
            if (flag)
            {
                k = 1;
            }
            parcel1.writeInt(k);
            return true;

        case 5: // '\005'
            parcel.enforceInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult");
            e();
            parcel1.writeNoException();
            return true;
        }
    }
}
