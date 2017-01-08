// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.c;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            w

public class r
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new w();
    public final int a;
    public final int b;
    public final c c;

    r(int i, int j, c c1)
    {
        a = i;
        b = j;
        c = c1;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        w.a(this, parcel, i);
    }

}
