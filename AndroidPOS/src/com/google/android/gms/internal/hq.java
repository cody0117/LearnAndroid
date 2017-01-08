// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;

// Referenced classes of package com.google.android.gms.internal:
//            ho, hk, hn

public abstract class hq extends Binder
    implements ho
{

    public hq()
    {
        attachInterface(this, "com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener");
    }

    public IBinder asBinder()
    {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
    {
        IBinder ibinder;
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener");
            boolean flag = a(parcel.readString());
            parcel1.writeNoException();
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

        case 2: // '\002'
            parcel.enforceInterface("com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener");
            ibinder = parcel.readStrongBinder();
            break;
        }
        Object obj;
        if (ibinder == null)
        {
            obj = null;
        } else
        {
            android.os.IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult");
            if (iinterface != null && (iinterface instanceof hk))
            {
                obj = (hk)iinterface;
            } else
            {
                obj = new hn(ibinder);
            }
        }
        a(((hk) (obj)));
        parcel1.writeNoException();
        return true;
    }
}
