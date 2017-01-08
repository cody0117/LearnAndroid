// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.a.a;

import android.os.IBinder;
import android.os.Parcel;

// Referenced classes of package com.google.android.a.a:
//            f, c

final class h
    implements f
{

    private IBinder a;

    h(IBinder ibinder)
    {
        a = ibinder;
    }

    public final void a(long l, String s, c c1)
    {
        Parcel parcel = Parcel.obtain();
        parcel.writeInterfaceToken("com.android.vending.licensing.ILicensingService");
        parcel.writeLong(l);
        parcel.writeString(s);
        IBinder ibinder;
        ibinder = null;
        if (c1 == null)
        {
            break MISSING_BLOCK_LABEL_41;
        }
        ibinder = c1.asBinder();
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
