// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.fitness.request:
//            g

public class ah
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new g();
    private final int a;
    private final String b;

    ah(int i, String s)
    {
        a = i;
        b = s;
    }

    public final String a()
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

    public final String toString()
    {
        Object aobj[] = new Object[1];
        aobj[0] = b;
        return String.format("UnclaimBleDeviceRequest{%s}", aobj);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        g.a(this, parcel);
    }

}
