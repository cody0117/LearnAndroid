// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import com.google.android.gms.internal.px;
import com.google.android.gms.maps.internal.b;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.maps.model:
//            i, LatLng

public final class LatLngBounds
    implements SafeParcelable
{

    public static final i CREATOR = new i();
    public final LatLng a;
    public final LatLng b;
    private final int c;

    LatLngBounds(int j, LatLng latlng, LatLng latlng1)
    {
        px.a(latlng, "null southwest");
        px.a(latlng1, "null northeast");
        boolean flag;
        Object aobj[];
        if (latlng1.a >= latlng.a)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        aobj = new Object[2];
        aobj[0] = Double.valueOf(latlng.a);
        aobj[1] = Double.valueOf(latlng1.a);
        if (!flag)
        {
            throw new IllegalArgumentException(String.format("southern latitude exceeds northern latitude (%s > %s)", aobj));
        } else
        {
            c = j;
            a = latlng;
            b = latlng1;
            return;
        }
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
            if (!(obj instanceof LatLngBounds))
            {
                return false;
            }
            LatLngBounds latlngbounds = (LatLngBounds)obj;
            if (!a.equals(latlngbounds.a) || !b.equals(latlngbounds.b))
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[2];
        aobj[0] = a;
        aobj[1] = b;
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        return pt.a(this).a("southwest", a).a("northeast", b).toString();
    }

    public final void writeToParcel(Parcel parcel, int j)
    {
        if (com.google.android.gms.maps.internal.b.a())
        {
            int k = com.google.android.gms.common.internal.safeparcel.c.a(parcel);
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, 1, c);
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, 2, a, j, false);
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, 3, b, j, false);
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, k);
            return;
        } else
        {
            i.a(this, parcel, j);
            return;
        }
    }

}
