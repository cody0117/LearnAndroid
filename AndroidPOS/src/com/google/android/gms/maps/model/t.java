// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.maps.model:
//            VisibleRegion, LatLng, LatLngBounds

public final class t
    implements android.os.Parcelable.Creator
{

    public t()
    {
    }

    static void a(VisibleRegion visibleregion, Parcel parcel, int i)
    {
        int j = c.a(parcel);
        c.a(parcel, 1, visibleregion.a());
        c.a(parcel, 2, visibleregion.a, i, false);
        c.a(parcel, 3, visibleregion.b, i, false);
        c.a(parcel, 4, visibleregion.c, i, false);
        c.a(parcel, 5, visibleregion.d, i, false);
        c.a(parcel, 6, visibleregion.e, i, false);
        c.a(parcel, j);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        LatLngBounds latlngbounds = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int j = 0;
        LatLng latlng = null;
        LatLng latlng1 = null;
        LatLng latlng2 = null;
        LatLng latlng3 = null;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int k = parcel.readInt();
                switch (0xffff & k)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, k);
                    break;

                case 1: // '\001'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    latlng3 = (LatLng)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, LatLng.CREATOR);
                    break;

                case 3: // '\003'
                    latlng2 = (LatLng)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, LatLng.CREATOR);
                    break;

                case 4: // '\004'
                    latlng1 = (LatLng)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, LatLng.CREATOR);
                    break;

                case 5: // '\005'
                    latlng = (LatLng)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, LatLng.CREATOR);
                    break;

                case 6: // '\006'
                    latlngbounds = (LatLngBounds)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, LatLngBounds.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(i).toString(), parcel);
            } else
            {
                return new VisibleRegion(j, latlng3, latlng2, latlng1, latlng, latlngbounds);
            }
        } while (true);
    }

    public final Object[] newArray(int i)
    {
        return new VisibleRegion[i];
    }
}
