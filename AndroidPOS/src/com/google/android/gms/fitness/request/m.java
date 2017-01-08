// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataType;

// Referenced classes of package com.google.android.gms.fitness.request:
//            z

public class m
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new z();
    private final int a;
    private final DataType b;

    m(int i, DataType datatype)
    {
        a = i;
        b = datatype;
    }

    public final DataType a()
    {
        return b;
    }

    final int b()
    {
        return a;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        z.a(this, parcel, i);
    }

}
