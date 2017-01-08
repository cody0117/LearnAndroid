// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.c;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            y

public class t
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new y();
    public final int a;
    public final int b;
    public final c c[];

    t(int i, int j, c ac[])
    {
        a = i;
        b = j;
        c = ac;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        y.a(this, parcel, i);
    }

}
