// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

// Referenced classes of package com.google.android.gms.maps.model:
//            LatLngBounds, LatLng

public final class i
    implements android.os.Parcelable.Creator
{

    public i()
    {
    }

    static void a(LatLngBounds latlngbounds, Parcel parcel, int j)
    {
        int k = c.a(parcel);
        c.a(parcel, 1, latlngbounds.a());
        c.a(parcel, 2, latlngbounds.a, j, false);
        c.a(parcel, 3, latlngbounds.b, j, false);
        c.a(parcel, k);
    }

    public final Object createFromParcel(Parcel parcel)
    {
        int j = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        LatLng latlng = null;
        int k = 0;
        LatLng latlng1 = null;
        do
        {
            if (parcel.dataPosition() < j)
            {
                int l = parcel.readInt();
                switch (0xffff & l)
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
                    break;

                case 1: // '\001'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 2: // '\002'
                    latlng = (LatLng)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, LatLng.CREATOR);
                    break;

                case 3: // '\003'
                    latlng1 = (LatLng)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, LatLng.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new b((new StringBuilder("Overread allowed size end=")).append(j).toString(), parcel);
            } else
            {
                return new LatLngBounds(k, latlng, latlng1);
            }
        } while (true);
    }

    public final Object[] newArray(int j)
    {
        return new LatLngBounds[j];
    }
}
