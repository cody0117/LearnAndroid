// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            k, e, d

public class ar
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new k();
    final int a;
    public final d b;

    ar(int i, IBinder ibinder)
    {
        a = i;
        if (ibinder != null)
        {
            b = e.a(ibinder);
            return;
        } else
        {
            b = null;
            return;
        }
    }

    final IBinder a()
    {
        if (b == null)
        {
            return null;
        } else
        {
            return b.asBinder();
        }
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        k.a(this, parcel);
    }

}
