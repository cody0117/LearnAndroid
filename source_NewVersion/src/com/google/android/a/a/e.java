// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.a.a;

import android.os.IBinder;
import android.os.Parcel;

// Referenced classes of package com.google.android.a.a:
//            c

final class e
    implements c
{

    private IBinder a;

    e(IBinder ibinder)
    {
        a = ibinder;
    }

    public final void a(int i, String s, String s1)
    {
        Parcel parcel = Parcel.obtain();
        parcel.writeInterfaceToken("com.android.vending.licensing.ILicenseResultListener");
        parcel.writeInt(i);
        parcel.writeString(s);
        parcel.writeString(s1);
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
