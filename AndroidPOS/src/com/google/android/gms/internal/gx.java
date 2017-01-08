// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;

// Referenced classes of package com.google.android.gms.internal:
//            gw, gt, gv

public abstract class gx extends Binder
    implements gw
{

    public gx()
    {
        attachInterface(this, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseListener");
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
            parcel1.writeString("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseListener");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseListener");
            ibinder = parcel.readStrongBinder();
            break;
        }
        Object obj;
        if (ibinder == null)
        {
            obj = null;
        } else
        {
            android.os.IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchase");
            if (iinterface != null && (iinterface instanceof gt))
            {
                obj = (gt)iinterface;
            } else
            {
                obj = new gv(ibinder);
            }
        }
        a(((gt) (obj)));
        parcel1.writeNoException();
        return true;
    }
}
