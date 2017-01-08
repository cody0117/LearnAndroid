// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.pu;
import com.google.android.gms.maps.internal.b;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.maps.model:
//            t, LatLng, LatLngBounds

public final class VisibleRegion
    implements SafeParcelable
{

    public static final t CREATOR = new t();
    public final LatLng a;
    public final LatLng b;
    public final LatLng c;
    public final LatLng d;
    public final LatLngBounds e;
    private final int f;

    VisibleRegion(int i, LatLng latlng, LatLng latlng1, LatLng latlng2, LatLng latlng3, LatLngBounds latlngbounds)
    {
        f = i;
        a = latlng;
        b = latlng1;
        c = latlng2;
        d = latlng3;
        e = latlngbounds;
    }

    final int a()
    {
        return f;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof VisibleRegion))
            {
                return false;
            }
            VisibleRegion visibleregion = (VisibleRegion)obj;
            if (!a.equals(visibleregion.a) || !b.equals(visibleregion.b) || !c.equals(visibleregion.c) || !d.equals(visibleregion.d) || !e.equals(visibleregion.e))
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[5];
        aobj[0] = a;
        aobj[1] = b;
        aobj[2] = c;
        aobj[3] = d;
        aobj[4] = e;
        return Arrays.hashCode(aobj);
    }

    public final String toString()
    {
        return pt.a(this).a("nearLeft", a).a("nearRight", b).a("farLeft", c).a("farRight", d).a("latLngBounds", e).toString();
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        if (com.google.android.gms.maps.internal.b.a())
        {
            int j = com.google.android.gms.common.internal.safeparcel.c.a(parcel);
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, 1, f);
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, 2, a, i, false);
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, 3, b, i, false);
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, 4, c, i, false);
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, 5, d, i, false);
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, 6, e, i, false);
            com.google.android.gms.common.internal.safeparcel.c.a(parcel, j);
            return;
        } else
        {
            t.a(this, parcel, i);
            return;
        }
    }

}
