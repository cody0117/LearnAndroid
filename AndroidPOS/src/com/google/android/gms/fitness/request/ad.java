// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.fitness.request:
//            d, v, t

public class ad
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new d();
    private final int a;
    private final t b;

    ad(int i, IBinder ibinder)
    {
        a = i;
        b = v.a(ibinder);
    }

    final int a()
    {
        return a;
    }

    public final IBinder b()
    {
        return b.asBinder();
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        d.a(this, parcel);
    }

}
