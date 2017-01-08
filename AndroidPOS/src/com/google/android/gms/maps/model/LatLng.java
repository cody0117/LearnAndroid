// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.maps.internal.b;

// Referenced classes of package com.google.android.gms.maps.model:
//            j

public final class LatLng
    implements SafeParcelable
{

    public static final j CREATOR = new j();
    public final double a;
    public final double b;
    private final int c;

    public LatLng(double d, double d1)
    {
        this(1, d, d1);
    }

    LatLng(int i, double d, double d1)
    {
        c = i;
        if (-180D <= d1 && d1 < 180D)
        {
            b = d1;
        } else
        {
            b = (360D + (d1 - 180D) % 360D) % 360D - 180D;
        }
        a = Math.max(-90D, Math.min(90D, d));
    }

    final int a()
    {
        return c;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof LatLng))
            {
                return false;
            }
            LatLng latlng = (LatLng)obj;
            if (Double.doubleToLongBits(a) != Double.doubleToLongBits(latlng.a) || Double.doubleToLongBits(b) != Double.doubleToLongBits(latlng.b))
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        long l = Double.doubleToLongBits(a);
        int i = 31 + (int)(l ^ l >>> 32);
        long l1 = Double.doubleToLongBits(b);
        return i * 31 + (int)(l1 ^ l1 >>> 32);
    }

    public final String toString()
    {
        return (new StringBuilder("lat/lng: (")).append(a).append(",").append(b).append(")").toString();
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        if (com.google.android.gms.maps.internal.b.a())
        {
            int k = com.google.android.gms.common.internal.safeparcel.c.a(parcel);
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, 1, c);
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, 2, a);
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, 3, b);
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, k);
            return;
        } else
        {
            j.a(this, parcel);
            return;
        }
    }

}
