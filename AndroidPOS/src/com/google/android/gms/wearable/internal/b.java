// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            o, e, d

public class b
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new o();
    final int a;
    public final d b;
    public final IntentFilter c[];

    b(int i, IBinder ibinder, IntentFilter aintentfilter[])
    {
        a = i;
        if (ibinder != null)
        {
            b = e.a(ibinder);
        } else
        {
            b = null;
        }
        c = aintentfilter;
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
        o.a(this, parcel, i);
    }

}
