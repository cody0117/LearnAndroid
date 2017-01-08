// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.StorageStats;

// Referenced classes of package com.google.android.gms.drive.internal:
//            s

public class OnStorageStatsResponse
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new s();
    final int a;
    StorageStats b;

    OnStorageStatsResponse(int i, StorageStats storagestats)
    {
        a = i;
        b = storagestats;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        s.a(this, parcel, i);
    }

}
