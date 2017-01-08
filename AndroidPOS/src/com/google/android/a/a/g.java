// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.a.a;

import android.os.IBinder;
import android.os.Parcel;

// Referenced classes of package com.google.android.a.a:
//            e, b

final class g
    implements e
{

    private IBinder a;

    g(IBinder ibinder)
    {
        a = ibinder;
    }

    public final void a(long l, String s, b b1)
    {
        Parcel parcel = Parcel.obtain();
        parcel.writeInterfaceToken("com.android.vending.licensing.ILicensingService");
        parcel.writeLong(l);
        parcel.writeString(s);
        IBinder ibinder;
        ibinder = null;
        if (b1 == null)
        {
            break MISSING_BLOCK_LABEL_41;
        }
        ibinder = b1.asBinder();
        parcel.writeStrongBinder(ibinder);
        a.transact(1, parcel, null, 1);
        parcel.recycle();
        return;
        Exception exception;
        exception;
        parcel.recycle();
        throw exception;
    }

    public final IBinder asBinder()
    {
        return a;
    }
}
