// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.BleDevice;

// Referenced classes of package com.google.android.gms.fitness.request:
//            i

public class b
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new i();
    private final int a;
    private final String b;
    private final BleDevice c;

    b(int j, String s, BleDevice bledevice)
    {
        a = j;
        b = s;
        c = bledevice;
    }

    public final String a()
    {
        return b;
    }

    public final BleDevice b()
    {
        return c;
    }

    final int c()
    {
        return a;
    }

    public int describeContents()
    {
        return 0;
    }

    public final String toString()
    {
        Object aobj[] = new Object[2];
        aobj[0] = b;
        aobj[1] = c;
        return String.format("ClaimBleDeviceRequest{%s %s}", aobj);
    }

    public void writeToParcel(Parcel parcel, int j)
    {
        i.a(this, parcel, j);
    }

}
